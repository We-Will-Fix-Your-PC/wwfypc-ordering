/**
 * @flow
 */

/* eslint-disable */

'use strict';

/*::
import type { ConcreteRequest } from 'relay-runtime';
export type PriceQueryVariables = {|
  formatID: string,
  count: number,
|};
export type PriceQueryResponse = {|
  +format: ?{|
    +id?: string,
    +groupName?: ?string,
    +price?: ?any,
    +originalformatextraSet?: {|
      +edges: $ReadOnlyArray<?{|
        +node: ?{|
          +id: string,
          +name: string,
          +price: number,
          +image: ?string,
        |}
      |}>
    |},
  |}
|};
export type PriceQuery = {|
  variables: PriceQueryVariables,
  response: PriceQueryResponse,
|};
*/


/*
query PriceQuery(
  $formatID: ID!
  $count: Int!
) {
  format: node(id: $formatID) {
    __typename
    ... on OriginalFormat {
      id
      groupName(count: $count)
      price(count: $count)
      originalformatextraSet {
        edges {
          node {
            id
            name
            price
            image
          }
        }
      }
    }
    id
  }
}
*/

const node/*: ConcreteRequest*/ = (function(){
var v0 = {
  "defaultValue": null,
  "kind": "LocalArgument",
  "name": "count"
},
v1 = {
  "defaultValue": null,
  "kind": "LocalArgument",
  "name": "formatID"
},
v2 = [
  {
    "kind": "Variable",
    "name": "id",
    "variableName": "formatID"
  }
],
v3 = {
  "alias": null,
  "args": null,
  "kind": "ScalarField",
  "name": "id",
  "storageKey": null
},
v4 = [
  {
    "kind": "Variable",
    "name": "count",
    "variableName": "count"
  }
],
v5 = {
  "alias": null,
  "args": (v4/*: any*/),
  "kind": "ScalarField",
  "name": "groupName",
  "storageKey": null
},
v6 = {
  "alias": null,
  "args": (v4/*: any*/),
  "kind": "ScalarField",
  "name": "price",
  "storageKey": null
},
v7 = {
  "alias": null,
  "args": null,
  "concreteType": "OriginalFormatTierExtraConnection",
  "kind": "LinkedField",
  "name": "originalformatextraSet",
  "plural": false,
  "selections": [
    {
      "alias": null,
      "args": null,
      "concreteType": "OriginalFormatTierExtraEdge",
      "kind": "LinkedField",
      "name": "edges",
      "plural": true,
      "selections": [
        {
          "alias": null,
          "args": null,
          "concreteType": "OriginalFormatTierExtra",
          "kind": "LinkedField",
          "name": "node",
          "plural": false,
          "selections": [
            (v3/*: any*/),
            {
              "alias": null,
              "args": null,
              "kind": "ScalarField",
              "name": "name",
              "storageKey": null
            },
            {
              "alias": null,
              "args": null,
              "kind": "ScalarField",
              "name": "price",
              "storageKey": null
            },
            {
              "alias": null,
              "args": null,
              "kind": "ScalarField",
              "name": "image",
              "storageKey": null
            }
          ],
          "storageKey": null
        }
      ],
      "storageKey": null
    }
  ],
  "storageKey": null
};
return {
  "fragment": {
    "argumentDefinitions": [
      (v0/*: any*/),
      (v1/*: any*/)
    ],
    "kind": "Fragment",
    "metadata": null,
    "name": "PriceQuery",
    "selections": [
      {
        "alias": "format",
        "args": (v2/*: any*/),
        "concreteType": null,
        "kind": "LinkedField",
        "name": "node",
        "plural": false,
        "selections": [
          {
            "kind": "InlineFragment",
            "selections": [
              (v3/*: any*/),
              (v5/*: any*/),
              (v6/*: any*/),
              (v7/*: any*/)
            ],
            "type": "OriginalFormat",
            "abstractKey": null
          }
        ],
        "storageKey": null
      }
    ],
    "type": "Query",
    "abstractKey": null
  },
  "kind": "Request",
  "operation": {
    "argumentDefinitions": [
      (v1/*: any*/),
      (v0/*: any*/)
    ],
    "kind": "Operation",
    "name": "PriceQuery",
    "selections": [
      {
        "alias": "format",
        "args": (v2/*: any*/),
        "concreteType": null,
        "kind": "LinkedField",
        "name": "node",
        "plural": false,
        "selections": [
          {
            "alias": null,
            "args": null,
            "kind": "ScalarField",
            "name": "__typename",
            "storageKey": null
          },
          (v3/*: any*/),
          {
            "kind": "InlineFragment",
            "selections": [
              (v5/*: any*/),
              (v6/*: any*/),
              (v7/*: any*/)
            ],
            "type": "OriginalFormat",
            "abstractKey": null
          }
        ],
        "storageKey": null
      }
    ]
  },
  "params": {
    "cacheID": "0c1c557cf127343e9fb29c11dd56bdc4",
    "id": null,
    "metadata": {},
    "name": "PriceQuery",
    "operationKind": "query",
    "text": "query PriceQuery(\n  $formatID: ID!\n  $count: Int!\n) {\n  format: node(id: $formatID) {\n    __typename\n    ... on OriginalFormat {\n      id\n      groupName(count: $count)\n      price(count: $count)\n      originalformatextraSet {\n        edges {\n          node {\n            id\n            name\n            price\n            image\n          }\n        }\n      }\n    }\n    id\n  }\n}\n"
  }
};
})();
// prettier-ignore
(node/*: any*/).hash = '537eeb48cc377d04815e251c23b5cb58';

module.exports = node;
