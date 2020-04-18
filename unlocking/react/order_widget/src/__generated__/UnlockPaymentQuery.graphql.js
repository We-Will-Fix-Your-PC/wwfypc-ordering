/**
 * @flow
 * @relayHash c8c365fc8cf0c33216b092062ac5cbb4
 */

/* eslint-disable */

'use strict';

/*::
import type { ConcreteRequest } from 'relay-runtime';
export type UnlockPaymentQueryVariables = {|
  unlockID: string,
  networkID: string,
  imei: string,
|};
export type UnlockPaymentQueryResponse = {|
  +unlock: ?{|
    +id?: string,
    +price?: number,
    +title?: ?string,
    +data?: ?string,
    +sig?: ?string,
  |}
|};
export type UnlockPaymentQuery = {|
  variables: UnlockPaymentQueryVariables,
  response: UnlockPaymentQueryResponse,
|};
*/


/*
query UnlockPaymentQuery(
  $unlockID: ID!
  $networkID: ID!
  $imei: String!
) {
  unlock: node(id: $unlockID) {
    __typename
    ... on PhoneUnlock {
      id
      price
      title(network: $networkID)
      data(imei: $imei)
      sig(imei: $imei, network: $networkID)
    }
    id
  }
}
*/

const node/*: ConcreteRequest*/ = (function(){
var v0 = [
  {
    "kind": "LocalArgument",
    "name": "unlockID",
    "type": "ID!",
    "defaultValue": null
  },
  {
    "kind": "LocalArgument",
    "name": "networkID",
    "type": "ID!",
    "defaultValue": null
  },
  {
    "kind": "LocalArgument",
    "name": "imei",
    "type": "String!",
    "defaultValue": null
  }
],
v1 = [
  {
    "kind": "Variable",
    "name": "id",
    "variableName": "unlockID"
  }
],
v2 = {
  "kind": "ScalarField",
  "alias": null,
  "name": "id",
  "args": null,
  "storageKey": null
},
v3 = {
  "kind": "ScalarField",
  "alias": null,
  "name": "price",
  "args": null,
  "storageKey": null
},
v4 = {
  "kind": "Variable",
  "name": "network",
  "variableName": "networkID"
},
v5 = {
  "kind": "ScalarField",
  "alias": null,
  "name": "title",
  "args": [
    (v4/*: any*/)
  ],
  "storageKey": null
},
v6 = {
  "kind": "Variable",
  "name": "imei",
  "variableName": "imei"
},
v7 = {
  "kind": "ScalarField",
  "alias": null,
  "name": "data",
  "args": [
    (v6/*: any*/)
  ],
  "storageKey": null
},
v8 = {
  "kind": "ScalarField",
  "alias": null,
  "name": "sig",
  "args": [
    (v6/*: any*/),
    (v4/*: any*/)
  ],
  "storageKey": null
};
return {
  "kind": "Request",
  "fragment": {
    "kind": "Fragment",
    "name": "UnlockPaymentQuery",
    "type": "Query",
    "metadata": null,
    "argumentDefinitions": (v0/*: any*/),
    "selections": [
      {
        "kind": "LinkedField",
        "alias": "unlock",
        "name": "node",
        "storageKey": null,
        "args": (v1/*: any*/),
        "concreteType": null,
        "plural": false,
        "selections": [
          {
            "kind": "InlineFragment",
            "type": "PhoneUnlock",
            "selections": [
              (v2/*: any*/),
              (v3/*: any*/),
              (v5/*: any*/),
              (v7/*: any*/),
              (v8/*: any*/)
            ]
          }
        ]
      }
    ]
  },
  "operation": {
    "kind": "Operation",
    "name": "UnlockPaymentQuery",
    "argumentDefinitions": (v0/*: any*/),
    "selections": [
      {
        "kind": "LinkedField",
        "alias": "unlock",
        "name": "node",
        "storageKey": null,
        "args": (v1/*: any*/),
        "concreteType": null,
        "plural": false,
        "selections": [
          {
            "kind": "ScalarField",
            "alias": null,
            "name": "__typename",
            "args": null,
            "storageKey": null
          },
          (v2/*: any*/),
          {
            "kind": "InlineFragment",
            "type": "PhoneUnlock",
            "selections": [
              (v3/*: any*/),
              (v5/*: any*/),
              (v7/*: any*/),
              (v8/*: any*/)
            ]
          }
        ]
      }
    ]
  },
  "params": {
    "operationKind": "query",
    "name": "UnlockPaymentQuery",
    "id": null,
    "text": "query UnlockPaymentQuery(\n  $unlockID: ID!\n  $networkID: ID!\n  $imei: String!\n) {\n  unlock: node(id: $unlockID) {\n    __typename\n    ... on PhoneUnlock {\n      id\n      price\n      title(network: $networkID)\n      data(imei: $imei)\n      sig(imei: $imei, network: $networkID)\n    }\n    id\n  }\n}\n",
    "metadata": {}
  }
};
})();
// prettier-ignore
(node/*: any*/).hash = '0cc65a2a1bbcda8ee9c06296d4b18e05';

module.exports = node;
