/**
 * @flow
 */

/* eslint-disable */

'use strict';

/*::
import type { ConcreteRequest } from 'relay-runtime';
type FormatList_query$ref = any;
export type widgetFormatQueryVariables = {||};
export type widgetFormatQueryResponse = {|
  +$fragmentRefs: FormatList_query$ref
|};
export type widgetFormatQuery = {|
  variables: widgetFormatQueryVariables,
  response: widgetFormatQueryResponse,
|};
*/


/*
query widgetFormatQuery {
  ...FormatList_query
}

fragment FormatList_query on Query {
  originalFormats {
    edges {
      node {
        id
        name
        image
        singularName
        groupName
      }
    }
  }
}
*/

const node/*: ConcreteRequest*/ = {
  "fragment": {
    "argumentDefinitions": [],
    "kind": "Fragment",
    "metadata": null,
    "name": "widgetFormatQuery",
    "selections": [
      {
        "args": null,
        "kind": "FragmentSpread",
        "name": "FormatList_query"
      }
    ],
    "type": "Query",
    "abstractKey": null
  },
  "kind": "Request",
  "operation": {
    "argumentDefinitions": [],
    "kind": "Operation",
    "name": "widgetFormatQuery",
    "selections": [
      {
        "alias": null,
        "args": null,
        "concreteType": "OriginalFormatConnection",
        "kind": "LinkedField",
        "name": "originalFormats",
        "plural": false,
        "selections": [
          {
            "alias": null,
            "args": null,
            "concreteType": "OriginalFormatEdge",
            "kind": "LinkedField",
            "name": "edges",
            "plural": true,
            "selections": [
              {
                "alias": null,
                "args": null,
                "concreteType": "OriginalFormat",
                "kind": "LinkedField",
                "name": "node",
                "plural": false,
                "selections": [
                  {
                    "alias": null,
                    "args": null,
                    "kind": "ScalarField",
                    "name": "id",
                    "storageKey": null
                  },
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
                    "name": "image",
                    "storageKey": null
                  },
                  {
                    "alias": null,
                    "args": null,
                    "kind": "ScalarField",
                    "name": "singularName",
                    "storageKey": null
                  },
                  {
                    "alias": null,
                    "args": null,
                    "kind": "ScalarField",
                    "name": "groupName",
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
      }
    ]
  },
  "params": {
    "cacheID": "d42a9c98263f15283126e023cf16afc5",
    "id": null,
    "metadata": {},
    "name": "widgetFormatQuery",
    "operationKind": "query",
    "text": "query widgetFormatQuery {\n  ...FormatList_query\n}\n\nfragment FormatList_query on Query {\n  originalFormats {\n    edges {\n      node {\n        id\n        name\n        image\n        singularName\n        groupName\n      }\n    }\n  }\n}\n"
  }
};
// prettier-ignore
(node/*: any*/).hash = 'c1a7b35416461ceec061042a73b2df94';

module.exports = node;
