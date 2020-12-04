/**
 * @flow
 */

/* eslint-disable */

'use strict';

/*::
import type { ReaderFragment } from 'relay-runtime';
import type { FragmentReference } from "relay-runtime";
declare export opaque type FormatList_query$ref: FragmentReference;
declare export opaque type FormatList_query$fragmentType: FormatList_query$ref;
export type FormatList_query = {|
  +originalFormats: ?{|
    +edges: $ReadOnlyArray<?{|
      +node: ?{|
        +id: string,
        +name: string,
        +image: ?string,
        +singularName: string,
        +groupName: ?string,
      |}
    |}>
  |},
  +$refType: FormatList_query$ref,
|};
export type FormatList_query$data = FormatList_query;
export type FormatList_query$key = {
  +$data?: FormatList_query$data,
  +$fragmentRefs: FormatList_query$ref,
  ...
};
*/


const node/*: ReaderFragment*/ = {
  "argumentDefinitions": [],
  "kind": "Fragment",
  "metadata": null,
  "name": "FormatList_query",
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
  ],
  "type": "Query"
};
// prettier-ignore
(node/*: any*/).hash = 'c026971daedc89b3e775af43f45bd7bb';

module.exports = node;
