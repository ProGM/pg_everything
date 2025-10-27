function app() {
  const { GQL_ENDPOINT, LOGIN_ENDPOINT } = window.APP_CONFIG;
  const { TOKEN_KEY, EMAIL_KEY, LIST_QUERY, SEARCH_FULLTEXT, SEARCH_EMBED } = window.CONFIG;
  // --- small utils ---
  async function authFetch(url, opts = {}, token = null) {
    const headers = Object.assign({
      'Content-Type': 'application/json'
    }, opts.headers || {});

    if (token) headers['Authorization'] = token;
    const res = await fetch(url, {
      ...opts,
      headers
    });

    if (res.status === 401 || res.status === 403) {
      const err = new Error('Unauthorized');
      err.__auth = true;
      err.response = res;
      throw err;
    }
    return res;
  }

  async function gql(query, variables = {}, token = null) {
    for (const [key, value] of Object.entries(variables || {})) {
      if (value === undefined) throw new Error('Undefined variable in GraphQL query');
      query = query.replace(new RegExp(`\\$${key}`, 'g'), value);
    }
    const res = await authFetch(GQL_ENDPOINT, {
      method: 'POST',
      body: JSON.stringify({
        query
      })
    }, token);
    const json = await res.json();
    if (json.errors) {
      const msg = json.errors.map(e => e.message).join(' | ');
      throw new Error(msg);
    }
    return json.data;
  }

  const normalizeSearch = (block) =>
    !block ? [] :
    Array.isArray(block) ? block :
    block.edges ? block.edges.map(e => e.node) :
    block.id ? [block] : [];

  return {
    // ---------- auth state ----------
    authed: false,
    token: '',
    userEmail: '',
    email: '',
    password: '',
    loggingIn: false,
    authError: '',

    // ---------- app state ----------
    items: [],
    totalCount: null,
    page: 1,
    pageSize: 12,
    loading: false,
    error: '',
    searchQuery: '',
    strategy: 'fulltext',
    isSearching: false,
    selected: null,

    // ---------- lifecycle ----------
    boot() {
      // Restore token if present
      const t = sessionStorage.getItem(TOKEN_KEY);
      const e = sessionStorage.getItem(EMAIL_KEY);
      if (t) {
        this.token = t;
        this.userEmail = e || '';
        this.authed = true;
        this.loadPage(1);
      }
    },

    // ---------- auth actions ----------
    async login() {
      this.authError = '';
      if (!this.email || !this.password) {
        this.authError = 'Email and password are required.';
        return;
      }
      this.loggingIn = true;
      try {
        const res = await authFetch(LOGIN_ENDPOINT, {
          method: 'POST',
          body: JSON.stringify({
            email: this.email,
            password: this.password
          })
        }, null);
        const data = await res.json();
        if (!data?.token) throw new Error('No token returned by server.');
        this.token = data.token;
        this.userEmail = this.email;
        sessionStorage.setItem(TOKEN_KEY, this.token);
        sessionStorage.setItem(EMAIL_KEY, this.userEmail);
        this.authed = true;
        // Initial data load
        await this.loadPage(1);
      } catch (e) {
        this.authError = e?.message || 'Login failed.';
      } finally {
        this.loggingIn = false;
      }
    },
    
    logout() {
      this.authed = false;
      this.token = '';
      this.userEmail = '';
      sessionStorage.removeItem(TOKEN_KEY);
      sessionStorage.removeItem(EMAIL_KEY);
      // Clear any sensitive app state
      this.items = [];
      this.searchQuery = '';
      this.page = 1;
    },

    // ---------- computed ----------
    statusText() {
      if (this.loading) return 'Loading…';
      if (this.error) return 'Error';
      if (this.isSearching) return `Showing ${this.items.length} result(s) for “${this.searchQuery}” (${this.strategy})`;
      if (this.totalCount !== null) {
        const start = (this.page - 1) * this.pageSize + 1;
        const end = Math.min(this.page * this.pageSize, this.totalCount);
        return `Showing ${start}–${end} of ${this.totalCount}`;
      }
      return '';
    },

    // ---------- data actions ----------
    async loadPage(p) {
      if (!this.authed) return;
      this.loading = true;
      this.error = '';
      this.isSearching = false;
      this.page = Math.max(1, p);
      try {
        const offset = (this.page - 1) * this.pageSize;
        console.log('Loading page', this.page, 'offset', offset);
        const data = await gql(LIST_QUERY, {
          first: this.pageSize,
          offset
        }, this.token);
        const col = data?.pokemonCollection;
        this.totalCount = col?.totalCount ?? null;
        this.items = (col?.edges || []).map(e => e.node);
      } catch (e) {
        if (e.__auth) {
          this.logout();
          return;
        }
        this.error = e.message || String(e);
        this.items = [];
        this.totalCount = null;
      } finally {
        this.loading = false;
      }
    },
    async doSearch() {
      const q = (this.searchQuery || '').trim();
      if (!q) {
        this.resetSearch();
        return;
      }
      this.loading = true;
      this.error = '';
      this.isSearching = true;
      try {
        const query = this.strategy === 'embeddings' ? SEARCH_EMBED : SEARCH_FULLTEXT;
        const data = await gql(query, {
          q,
          k: 50
        }, this.token);
        const block = data.searchFullTextPokemon ?? data.searchEmbeddingsPokemon ?? null;
        this.items = normalizeSearch(block);
        this.totalCount = null;
      } catch (e) {
        if (e.__auth) {
          this.logout();
          return;
        }
        this.error = e.message || String(e);
        this.items = [];
      } finally {
        this.loading = false;
      }
    },
    resetSearch() {
      this.searchQuery = '';
      this.strategy = 'fulltext';
      this.loadPage(1);
    },
    nextPage() {
      if (!this.isSearching) this.loadPage(this.page + 1);
    },
    prevPage() {
      if (!this.isSearching && this.page > 1) this.loadPage(this.page - 1);
    },
    openModal(p) {
      this.selected = p;
      document.getElementById('details')?.show();
    }
  };
}