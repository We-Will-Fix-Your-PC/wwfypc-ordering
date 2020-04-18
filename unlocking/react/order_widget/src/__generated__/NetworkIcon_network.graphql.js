/**
 * @flow
 */

/* eslint-disable */

'use strict';

/*::
import type { ReaderFragment } from 'relay-runtime';
import type { FragmentReference } from "relay-runtime";
declare export opaque type NetworkIcon_network$ref: FragmentReference;
declare export opaque type NetworkIcon_network$fragmentType: NetworkIcon_network$ref;
export type NetworkIcon_network = {|
  +id: string,
  +displayName: string,
  +image: string,
  +$refType: NetworkIcon_network$ref,
|};
export type NetworkIcon_network$data = NetworkIcon_network;
export type NetworkIcon_network$key = {
  +$data?: NetworkIcon_network$data,
  +$fragmentRefs: NetworkIcon_network$ref,
  ...
};
*/


const node/*: ReaderFragment*/ = {
  "kind": "Fragment",
  "name": "NetworkIcon_network",
  "type": "NetworkName",
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
(node/*: any*/).hash = '5b54d903b956c5569c9283bee603c2ef';

module.exports = node;
