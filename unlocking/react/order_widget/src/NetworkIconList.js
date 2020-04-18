import React from 'react';
import {graphql, createFragmentContainer} from 'react-relay'
import NetworkIcon from "./NetworkIcon";

class NetworkIconList extends React.Component {
    render() {
        const {networks} = this.props.query;

        return (
            <div className="NetworkIcons">
                {networks.edges.map(edge => (
                    edge.node.networknameSet.edges.map(edge =>
                        <NetworkIcon network={edge.node} key={edge.node.id} onClick={this.props.onClick} />
                    ))
                )}
            </div>
        );
    }
}

export default createFragmentContainer(
    NetworkIconList,
    {
        query: graphql`
          fragment NetworkIconList_query on Query {
            networks {
              edges {
                node {
                  id
                  networknameSet {
                    edges {
                      node {
                        id,
                        ...NetworkIcon_network
                      }
                    }
                  }
                }
              }
            }
          }
        `
    }
)