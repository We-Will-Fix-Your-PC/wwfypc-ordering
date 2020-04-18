/**
 * @flow
 */

/* eslint-disable */

'use strict';

/*::
import type { ReaderFragment } from 'relay-runtime';
type NetworkIcon_network$ref = any;
import type { FragmentReference } from "relay-runtime";
declare export opaque type NetworkIconList_query$ref: FragmentReference;
declare export opaque type NetworkIconList_query$fragmentType: NetworkIconList_query$ref;
export type NetworkIconList_query = {|
  +networks: ?{|
    +edges: $ReadOnlyArray<?{|
      +node: ?{|
        +id: string,
        +networknameSet: {|
          +edges: $ReadOnlyArray<?{|
            +node: ?{|
              +id: string,
              +$fragmentRefs: NetworkIcon_network$ref,
            |}
          |}>
        |},
      |}
    |}>
  |},
  +$refType: NetworkIconList_query$ref,
|};
export type NetworkIconList_query$data = NetworkIconList_query;
export type NetworkIconList_query$key = {
  +$data?: NetworkIconList_query$data,
  +$fragmentRefs: NetworkIconList_query$ref,
  ...
};
*/


const node/*: ReaderFragment*/ = (function(){
var v0 = {
  "kind": "ScalarField",
  "alias": null,
  "name": "id",
  "args": null,
  "storageKey": null
};
return {
  "kind": "Fragment",
  "name": "NetworkIconList_query",
  "type": "Query",
  "metadata": null,
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
                          "selections": [
                            (v0/*: any*/),
                            {
                              "kind": "FragmentSpread",
                              "name": "NetworkIcon_network",
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
    }
  ]
};
})();
// prettier-ignore
(node/*: any*/).hash = '27de0cddf57974cbb524b4e51361fa86';

module.exports = node;
