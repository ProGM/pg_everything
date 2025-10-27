const LIST_QUERY = `
{
    pokemonCollection(first:$first, offset:$offset, orderBy:[{id:AscNullsLast}]) {
        edges {
            node {
                id name description type1 type2 total generation legendary imageUrl
            }
            cursor
        }
        totalCount
    }
}
`;
const SEARCH_FULLTEXT = `
{
    searchFullTextPokemon(content: $q, maxResults:$k) {
        id name description type1 type2 total generation legendary imageUrl
    }
}
`;
const SEARCH_EMBED = `
{
    searchEmbeddingsPokemon(content:$q, maxResults:$k) {
        id name description type1 type2 total generation legendary imageUrl
    }
}
`;

window.APP_CONFIG = {
  LOGIN_ENDPOINT: 'http://localhost:8080/login',
  GQL_ENDPOINT: 'http://localhost:8080/graphql'
};

window.CONFIG = {
  TOKEN_KEY: 'auth.token',
  EMAIL_KEY: 'auth.email',
  LIST_QUERY,
  SEARCH_FULLTEXT,
  SEARCH_EMBED,
  PAGE_SIZE: 20
};

