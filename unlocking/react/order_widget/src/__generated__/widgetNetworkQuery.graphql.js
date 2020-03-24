/**
 * @flow
 * @relayHash 360e2956a8b24dc60c7492d09161797c
 */

/* eslint-disable */

'use strict';

/*::
import type { ConcreteRequest } from 'relay-runtime';
export type widgetNetworkQueryVariables = {||};
export type widgetNetworkQueryResponse = {|
  +networks: ?{|
    +edges: ?$ReadOnlyArray<?{|
      +node: ?{|
        +id: string,
        +name: string,
        +displayName: string,
      |}
    |}>
  |}
|};
export type widgetNetworkQuery = {|
  variables: widgetNetworkQueryVariables,
  response: widgetNetworkQueryResponse,
|};
*/


/*
query widgetNetworkQuery {
  networks {
    edges {
      node {
        id
        name
        displayName
      }
    }
  }
}
*/

const node/*: ConcreteRequest*/ = (function(){
var v0 = [
  {
    "kind": "LinkedField",
    "alias": null,
    "name": "networks",
    "storageKey": null,
    "args": null,
    "concreteType": "NetworkConnection",
    "plural": false,
    "selections": [
      {
        "kind": "LinkedField",
        "alias": null,
        "name": "edges",
        "storageKey": null,
        "args": null,
        "concreteType": "NetworkEdge",
        "plural": true,
        "selections": [
          {
            "kind": "LinkedField",
            "alias": null,
            "name": "node",
            "storageKey": null,
            "args": null,
            "concreteType": "Network",
            "plural": false,
            "selections": [
              {
                "kind": "ScalarField",
                "alias": null,
                "name": "id",
                "args": null,
                "storageKey": null
              },
              {
                "kind": "ScalarField",
                "alias": null,
                "name": "name",
                "args": null,
                "storageKey": null
              },
              {
                "kind": "ScalarField",
                "alias": null,
                "name": "displayName",
                "args": null,
                "storageKey": null
              }
            ]
          }
        ]
      }
    ]
  }
];
return {
  "kind": "Request",
  "fragment": {
    "kind": "Fragment",
    "name": "widgetNetworkQuery",
    "type": "Query",
    "metadata": null,
    "argumentDefinitions": [],
    "selections": (v0/*: any*/)
  },
  "operation": {
    "kind": "Operation",
    "name": "widgetNetworkQuery",
    "argumentDefinitions": [],
    "selections": (v0/*: any*/)
  },
  "params": {
    "operationKind": "query",
    "name": "widgetNetworkQuery",
    "id": null,
    "text": "query widgetNetworkQuery {\n  networks {\n    edges {\n      node {\n        id\n        name\n        displayName\n      }\n    }\n  }\n}\n",
    "metadata": {}
  }
};
})();
// prettier-ignore
(node/*: any*/).hash = '13ffcc4147781d9ed5cc774ab697cfda';

module.exports = node;
