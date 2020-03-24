import {
  Environment,
  Network,
  RecordSource,
  Store,
} from 'relay-runtime';

export const API_ROOT = process.env.BASE_URL ? process.env.BASE_URL :
    process.env.NODE_ENV  === 'production' ? 'https://order.cardifftec.uk/' : 'https://wwfypc-ordering.eu.ngrok.io/';

function fetchQuery(
  operation,
  variables,
) {
  return fetch(`${API_ROOT}graphql/`, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({
      query: operation.text,
      variables,
    }),
  }).then(response => {
    return response.json();
  });
}

const environment = new Environment({
  network: Network.create(fetchQuery),
  store: new Store(new RecordSource()),
});

export default environment;