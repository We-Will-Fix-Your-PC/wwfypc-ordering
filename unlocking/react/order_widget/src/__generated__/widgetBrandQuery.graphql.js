/**
 * @flow
 * @relayHash 0345e530ecef0f053fdb09b41a2822c3
 */

/* eslint-disable */

'use strict';

/*::
import type { ConcreteRequest } from 'relay-runtime';
type ModelIcon_model$ref = any;
export type widgetBrandQueryVariables = {|
  brandID: string
|};
export type widgetBrandQueryResponse = {|
  +node: ?{|
    +id: string,
    +modelSet?: {|
      +edges: $ReadOnlyArray<?{|
        +node: ?{|
          +id: string,
          +$fragmentRefs: ModelIcon_model$ref,
        |}
      |}>
    |},
  |}
|};
export type widgetBrandQuery = {|
  variables: widgetBrandQueryVariables,
  response: widgetBrandQueryResponse,
|};
*/


/*
query widgetBrandQuery(
  $brandID: ID!
) {
  node(id: $brandID) {
    __typename
    id
    ... on Brand {
      modelSet {
        edges {
          node {
            id
            ...ModelIcon_model
          }
        }
      }
    }
  }
}

fragment ModelIcon_model on Model {
  id
  displayName
  image
}
*/

const node/*: ConcreteRequest*/ = (function(){
var v0 = [
  {
    "kind": "LocalArgument",
    "name": "brandID",
    "type": "ID!",
    "defaultValue": null
  }
],
v1 = [
  {
    "kind": "Variable",
    "name": "id",
    "variableName": "brandID"
  }
],
v2 = {
  "kind": "ScalarField",
  "alias": null,
  "name": "id",
  "args": null,
  "storageKey": null
};
return {
  "kind": "Request",
  "fragment": {
    "kind": "Fragment",
    "name": "widgetBrandQuery",
    "type": "Query",
    "metadata": null,
    "argumentDefinitions": (v0/*: any*/),
    "selections": [
      {
        "kind": "LinkedField",
        "alias": null,
        "name": "node",
        "storageKey": null,
        "args": (v1/*: any*/),
        "concreteType": null,
        "plural": false,
        "selections": [
          (v2/*: any*/),
          {
            "kind": "InlineFragment",
            "type": "Brand",
            "selections": [
              {
                "kind": "LinkedField",
                "alias": null,
                "name": "modelSet",
                "storageKey": null,
                "args": null,
                "concreteType": "ModelConnection",
                "plural": false,
                "selections": [
                  {
                    "kind": "LinkedField",
                    "alias": null,
                    "name": "edges",
                    "storageKey": null,
                    "args": null,
                    "concreteType": "ModelEdge",
                    "plural": true,
                    "selections": [
                      {
                        "kind": "LinkedField",
                        "alias": null,
                        "name": "node",
                        "storageKey": null,
                        "args": null,
                        "concreteType": "Model",
                        "plural": false,
                        "selections": [
                          (v2/*: any*/),
                          {
                            "kind": "FragmentSpread",
                            "name": "ModelIcon_model",
                            "args": null
                          }
                        ]
                      }
                    ]
                  }
                ]
              }
            ]
          }
        ]
      }
    ]
  },
  "operation": {
    "kind": "Operation",
    "name": "widgetBrandQuery",
    "argumentDefinitions": (v0/*: any*/),
    "selections": [
      {
        "kind": "LinkedField",
        "alias": null,
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
            "type": "Brand",
            "selections": [
              {
                "kind": "LinkedField",
                "alias": null,
                "name": "modelSet",
                "storageKey": null,
                "args": null,
                "concreteType": "ModelConnection",
                "plural": false,
                "selections": [
                  {
                    "kind": "LinkedField",
                    "alias": null,
                    "name": "edges",
                    "storageKey": null,
                    "args": null,
                    "concreteType": "ModelEdge",
                    "plural": true,
                    "selections": [
                      {
                        "kind": "LinkedField",
                        "alias": null,
                        "name": "node",
                        "storageKey": null,
                        "args": null,
                        "concreteType": "Model",
                        "plural": false,
                        "selections": [
                          (v2/*: any*/),
                          {
                            "kind": "ScalarField",
                            "alias": null,
                            "name": "displayName",
                            "args": null,
                            "storageKey": null
                          },
                          {
                            "kind": "ScalarField",
                            "alias": null,
                            "name": "image",
                            "args": null,
                            "storageKey": null
                          }
                        ]
                      }
                    ]
                  }
                ]
              }
            ]
          }
        ]
      }
    ]
  },
  "params": {
    "operationKind": "query",
    "name": "widgetBrandQuery",
    "id": null,
    "text": "query widgetBrandQuery(\n  $brandID: ID!\n) {\n  node(id: $brandID) {\n    __typename\n    id\n    ... on Brand {\n      modelSet {\n        edges {\n          node {\n            id\n            ...ModelIcon_model\n          }\n        }\n      }\n    }\n  }\n}\n\nfragment ModelIcon_model on Model {\n  id\n  displayName\n  image\n}\n",
    "metadata": {}
  }
};
})();
// prettier-ignore
(node/*: any*/).hash = '6a24e75fac01e111608eb193cf624487';

module.exports = node;
