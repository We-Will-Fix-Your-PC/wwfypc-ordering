/**
 * @flow
 */

/* eslint-disable */

'use strict';

/*::
import type { ReaderFragment } from 'relay-runtime';
import type { FragmentReference } from "relay-runtime";
declare export opaque type BrandIcon_brand$ref: FragmentReference;
declare export opaque type BrandIcon_brand$fragmentType: BrandIcon_brand$ref;
export type BrandIcon_brand = {|
  +id: string,
  +displayName: string,
  +image: string,
  +$refType: BrandIcon_brand$ref,
|};
export type BrandIcon_brand$data = BrandIcon_brand;
export type BrandIcon_brand$key = {
  +$data?: BrandIcon_brand$data,
  +$fragmentRefs: BrandIcon_brand$ref,
  ...
};
*/


const node/*: ReaderFragment*/ = {
  "kind": "Fragment",
  "name": "BrandIcon_brand",
  "type": "Brand",
  "metadata": null,
  "argumentDefinitions": [],
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
};
// prettier-ignore
(node/*: any*/).hash = '8b812b93c2ccd2a73ce6e87c273d6205';

module.exports = node;
