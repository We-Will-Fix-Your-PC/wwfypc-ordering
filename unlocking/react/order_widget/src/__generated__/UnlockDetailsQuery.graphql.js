/**
 * @flow
 * @relayHash 82b744b489f3ee487c572816867b2068
 */

/* eslint-disable */

'use strict';

/*::
import type { ConcreteRequest } from 'relay-runtime';
export type UnlockDetailsQueryVariables = {|
  brandID: string,
  modelID?: ?string,
  networkID: string,
|};
export type UnlockDetailsQueryResponse = {|
  +phoneUnlock: ?{|
    +edges: $ReadOnlyArray<?{|
      +node: ?{|
        +id: string,
        +price: number,
        +time: string,
      |}
    |}>
  |},
  +network: ?{|
    +id?: string,
    +displayName?: string,
  |},
  +brand: ?{|
    +id?: string,
    +displayName?: string,
  |},
|};
export type UnlockDetailsQuery = {|
  variables: UnlockDetailsQueryVariables,
  response: UnlockDetailsQueryResponse,
|};
*/


/*
query UnlockDetailsQuery(
  $brandID: ID!
  $modelID: ID
  $networkID: ID!
) {
  phoneUnlock(brand: $brandID, device: $modelID, network: $networkID) {
    edges {
      node {
        id
        price
        time
      }
    }
  }
  network: node(id: $networkID) {
    __typename
    ... on NetworkName {
      id
      displayName
    }
    id
  }
  brand: node(id: $brandID) {
    __typename
    ... on Brand {
      id
      displayName
    }
    id
  }
}
*/

const node/*: ConcreteRequest*/ = (function(){
var v0 = [
  {
    "kind": "LocalArgument",
    "name": "brandID",
    "type": "ID!",
    "defaultValue": null
  },
  {
    "kind": "LocalArgument",
    "name": "modelID",
    "type": "ID",
    "defaultValue": null
  },
  {
    "kind": "LocalArgument",
    "name": "networkID",
    "type": "ID!",
    "defaultValue": null
  }
],
v1 = {
  "kind": "ScalarField",
  "alias": null,
  "name": "id",
  "args": null,
  "storageKey": null
},
v2 = {
  "kind": "LinkedField",
  "alias": null,
  "name": "phoneUnlock",
  "storageKey": null,
  "args": [
    {
      "kind": "Variable",
      "name": "brand",
      "variableName": "brandID"
    },
    {
      "kind": "Variable",
      "name": "device",
      "variableName": "modelID"
    },
    {
      "kind": "Variable",
      "name": "network",
      "variableName": "networkID"
    }
  ],
  "concreteType": "PhoneUnlockConnection",
  "plural": false,
  "selections": [
    {
      "kind": "LinkedField",
      "alias": null,
      "name": "edges",
      "storageKey": null,
      "args": null,
      "concreteType": "PhoneUnlockEdge",
      "plural": true,
      "selections": [
        {
          "kind": "LinkedField",
          "alias": null,
          "name": "node",
          "storageKey": null,
          "args": null,
          "concreteType": "PhoneUnlock",
          "plural": false,
          "selections": [
            (v1/*: any*/),
            {
              "kind": "ScalarField",
              "alias": null,
              "name": "price",
              "args": null,
              "storageKey": null
            },
            {
              "kind": "ScalarField",
              "alias": null,
              "name": "time",
              "args": null,
              "storageKey": null
            }
          ]
        }
      ]
    }
  ]
},
v3 = [
  {
    "kind": "Variable",
    "name": "id",
    "variableName": "networkID"
  }
],
v4 = {
  "kind": "ScalarField",
  "alias": null,
  "name": "displayName",
  "args": null,
  "storageKey": null
},
v5 = [
  (v1/*: any*/),
  (v4/*: any*/)
],
v6 = [
  {
    "kind": "Variable",
    "name": "id",
    "variableName": "brandID"
  }
],
v7 = {
  "kind": "ScalarField",
  "alias": null,
  "name": "__typename",
  "args": null,
  "storageKey": null
},
v8 = [
  (v4/*: any*/)
];
return {
  "kind": "Request",
  "fragment": {
    "kind": "Fragment",
    "name": "UnlockDetailsQuery",
    "type": "Query",
    "metadata": null,
    "argumentDefinitions": (v0/*: any*/),
    "selections": [
      (v2/*: any*/),
      {
        "kind": "LinkedField",
        "alias": "network",
        "name": "node",
        "storageKey": null,
        "args": (v3/*: any*/),
        "concreteType": null,
        "plural": false,
        "selections": [
          {
            "kind": "InlineFragment",
            "type": "NetworkName",
            "selections": (v5/*: any*/)
          }
        ]
      },
      {
        "kind": "LinkedField",
        "alias": "brand",
        "name": "node",
        "storageKey": null,
        "args": (v6/*: any*/),
        "concreteType": null,
        "plural": false,
        "selections": [
          {
            "kind": "InlineFragment",
            "type": "Brand",
            "selections": (v5/*: any*/)
          }
        ]
      }
    ]
  },
  "operation": {
    "kind": "Operation",
    "name": "UnlockDetailsQuery",
    "argumentDefinitions": (v0/*: any*/),
    "selections": [
      (v2/*: any*/),
      {
        "kind": "LinkedField",
        "alias": "network",
        "name": "node",
        "storageKey": null,
        "args": (v3/*: any*/),
        "concreteType": null,
        "plural": false,
        "selections": [
          (v7/*: any*/),
          (v1/*: any*/),
          {
            "kind": "InlineFragment",
            "type": "NetworkName",
            "selections": (v8/*: any*/)
          }
        ]
      },
      {
        "kind": "LinkedField",
        "alias": "brand",
        "name": "node",
        "storageKey": null,
        "args": (v6/*: any*/),
        "concreteType": null,
        "plural": false,
        "selections": [
          (v7/*: any*/),
          (v1/*: any*/),
          {
            "kind": "InlineFragment",
            "type": "Brand",
            "selections": (v8/*: any*/)
          }
        ]
      }
    ]
  },
  "params": {
    "operationKind": "query",
    "name": "UnlockDetailsQuery",
    "id": null,
    "text": "query UnlockDetailsQuery(\n  $brandID: ID!\n  $modelID: ID\n  $networkID: ID!\n) {\n  phoneUnlock(brand: $brandID, device: $modelID, network: $networkID) {\n    edges {\n      node {\n        id\n        price\n        time\n      }\n    }\n  }\n  network: node(id: $networkID) {\n    __typename\n    ... on NetworkName {\n      id\n      displayName\n    }\n    id\n  }\n  brand: node(id: $brandID) {\n    __typename\n    ... on Brand {\n      id\n      displayName\n    }\n    id\n  }\n}\n",
    "metadata": {}
  }
};
})();
// prettier-ignore
(node/*: any*/).hash = 'ed5ee397f381595d76b67d29e34649f7';

module.exports = node;
