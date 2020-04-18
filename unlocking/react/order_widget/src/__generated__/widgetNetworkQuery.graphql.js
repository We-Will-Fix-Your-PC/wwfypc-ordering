/**
 * @flow
 * @relayHash 1362f95721fe3c546c43c6cce7c2cf90
 */

/* eslint-disable */

'use strict';

/*::
import type { ConcreteRequest } from 'relay-runtime';
type BrandIconList_query$ref = any;
type NetworkIconList_query$ref = any;
export type widgetNetworkQueryVariables = {||};
export type widgetNetworkQueryResponse = {|
  +$fragmentRefs: NetworkIconList_query$ref & BrandIconList_query$ref
|};
export type widgetNetworkQuery = {|
  variables: widgetNetworkQueryVariables,
  response: widgetNetworkQueryResponse,
|};
*/


/*
query widgetNetworkQuery {
  ...NetworkIconList_query
  ...BrandIconList_query
}

fragment BrandIconList_query on Query {
  brands {
    edges {
      node {
        id
        ...BrandIcon_brand
      }
    }
  }
}

fragment BrandIcon_brand on Brand {
  id
  displayName
  image
}

fragment NetworkIconList_query on Query {
  networks {
    edges {
      node {
        id
        networknameSet {
          edges {
            node {
              id
              ...NetworkIcon_network
            }
          }
        }
      }
    }
  }
}

fragment NetworkIcon_network on NetworkName {
  id
  displayName
  image
}
*/

const node/*: ConcreteRequest*/ = (function(){
var v0 = {
  "kind": "ScalarField",
  "alias": null,
  "name": "id",
  "args": null,
  "storageKey": null
},
v1 = [
  (v0/*: any*/),
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
];
return {
  "kind": "Request",
  "fragment": {
    "kind": "Fragment",
    "name": "widgetNetworkQuery",
    "type": "Query",
    "metadata": null,
    "argumentDefinitions": [],
    "selections": [
      {
        "kind": "FragmentSpread",
        "name": "NetworkIconList_query",
        "args": null
      },
      {
        "kind": "FragmentSpread",
        "name": "BrandIconList_query",
        "args": null
      }
    ]
  },
  "operation": {
    "kind": "Operation",
    "name": "widgetNetworkQuery",
    "argumentDefinitions": [],
    "selections": [
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
                  (v0/*: any*/),
                  {
                    "kind": "LinkedField",
                    "alias": null,
                    "name": "networknameSet",
                    "storageKey": null,
                    "args": null,
                    "concreteType": "NetworkNameConnection",
                    "plural": false,
                    "selections": [
                      {
                        "kind": "LinkedField",
                        "alias": null,
                        "name": "edges",
                        "storageKey": null,
                        "args": null,
                        "concreteType": "NetworkNameEdge",
                        "plural": true,
                        "selections": [
                          {
                            "kind": "LinkedField",
                            "alias": null,
                            "name": "node",
                            "storageKey": null,
                            "args": null,
                            "concreteType": "NetworkName",
                            "plural": false,
                            "selections": (v1/*: any*/)
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
      {
        "kind": "LinkedField",
        "alias": null,
        "name": "brands",
        "storageKey": null,
        "args": null,
        "concreteType": "BrandConnection",
        "plural": false,
        "selections": [
          {
            "kind": "LinkedField",
            "alias": null,
            "name": "edges",
            "storageKey": null,
            "args": null,
            "concreteType": "BrandEdge",
            "plural": true,
            "selections": [
              {
                "kind": "LinkedField",
                "alias": null,
                "name": "node",
                "storageKey": null,
                "args": null,
                "concreteType": "Brand",
                "plural": false,
                "selections": (v1/*: any*/)
              }
            ]
          }
        ]
      }
    ]
  },
  "params": {
    "operationKind": "query",
    "name": "widgetNetworkQuery",
    "id": null,
    "text": "query widgetNetworkQuery {\n  ...NetworkIconList_query\n  ...BrandIconList_query\n}\n\nfragment BrandIconList_query on Query {\n  brands {\n    edges {\n      node {\n        id\n        ...BrandIcon_brand\n      }\n    }\n  }\n}\n\nfragment BrandIcon_brand on Brand {\n  id\n  displayName\n  image\n}\n\nfragment NetworkIconList_query on Query {\n  networks {\n    edges {\n      node {\n        id\n        networknameSet {\n          edges {\n            node {\n              id\n              ...NetworkIcon_network\n            }\n          }\n        }\n      }\n    }\n  }\n}\n\nfragment NetworkIcon_network on NetworkName {\n  id\n  displayName\n  image\n}\n",
    "metadata": {}
  }
};
})();
// prettier-ignore
(node/*: any*/).hash = '37e99d84ea4633f185a88d5449743ac2';

module.exports = node;
