/**
 * @flow
 */

/* eslint-disable */

'use strict';

/*::
import type { ReaderFragment } from 'relay-runtime';
import type { FragmentReference } from "relay-runtime";
declare export opaque type ModelIcon_model$ref: FragmentReference;
declare export opaque type ModelIcon_model$fragmentType: ModelIcon_model$ref;
export type ModelIcon_model = {|
  +id: string,
  +displayName: string,
  +image: string,
  +$refType: ModelIcon_model$ref,
|};
export type ModelIcon_model$data = ModelIcon_model;
export type ModelIcon_model$key = {
  +$data?: ModelIcon_model$data,
  +$fragmentRefs: ModelIcon_model$ref,
  ...
};
*/


const node/*: ReaderFragment*/ = {
  "kind": "Fragment",
  "name": "ModelIcon_model",
  "type": "Model",
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
(node/*: any*/).hash = '4935f5e97969ae52b95da4ec66053625';

module.exports = node;
