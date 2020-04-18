/**
 * @flow
 */

/* eslint-disable */

'use strict';

/*::
import type { ReaderFragment } from 'relay-runtime';
type BrandIcon_brand$ref = any;
import type { FragmentReference } from "relay-runtime";
declare export opaque type BrandIconList_query$ref: FragmentReference;
declare export opaque type BrandIconList_query$fragmentType: BrandIconList_query$ref;
export type BrandIconList_query = {|
  +brands: ?{|
    +edges: $ReadOnlyArray<?{|
      +node: ?{|
        +id: string,
        +$fragmentRefs: BrandIcon_brand$ref,
      |}
    |}>
  |},
  +$refType: BrandIconList_query$ref,
|};
export type BrandIconList_query$data = BrandIconList_query;
export type BrandIconList_query$key = {
  +$data?: BrandIconList_query$data,
  +$fragmentRefs: BrandIconList_query$ref,
  ...
};
*/


const node/*: ReaderFragment*/ = {
  "kind": "Fragment",
  "name": "BrandIconList_query",
  "type": "Query",
  "metadata": null,
  "argumentDefinitions": [],
  "selections": [
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
              "selections": [
                {
                  "kind": "ScalarField",
                  "alias": null,
                  "name": "id",
                  "args": null,
                  "storageKey": null
                },
                {
                  "kind": "FragmentSpread",
                  "name": "BrandIcon_brand",
                  "args": null
                }
              ]
            }
          ]
        }
      ]
    }
  ]
};
// prettier-ignore
(node/*: any*/).hash = '7bf90a05313e64037e09e1a588a3b6e3';

module.exports = node;
