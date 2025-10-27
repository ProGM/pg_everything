const auth = {
  LOGIN_ENDPOINT: 'http://localhost:8080/login',
  parseJwt (token) {
    var base64Url = token.split('.')[1];
    var base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
    var jsonPayload = decodeURIComponent(window.atob(base64).split('').map(function(c) {
        return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
    }).join(''));

    return JSON.parse(jsonPayload);
  },

  async authFetch(url, opts = {}, token = null) {
    const headers = Object.assign({
      'Content-Type': 'application/json'
    }, opts.headers || {});

    if (token) {
      headers['Authorization'] = token;
    }
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
  },

  async login(email, password) {
    const res = await this.authFetch(this.LOGIN_ENDPOINT, {
      method: 'POST',
      body: JSON.stringify({
        email: email,
        password: password
      })
    }, null);
    const data = await res.json();

    if (!data?.token) {
      throw new Error('No token returned by server.');
    }

    return { token: data.token, expiresAt: this.parseJwt(data.token).exp };
  }
}

