import React from 'react';
import {graphql, createFragmentContainer} from 'react-relay'
import BrandIcon from "./BrandIcon";

class BrandIconList extends React.Component {
    render() {
        const {brands} = this.props.query;

        return (
            <div className="BrandIcons">
                {brands.edges.map(edge => (
                    <BrandIcon brand={edge.node} key={edge.node.id} onClick={this.props.onClick} />
                ))}
            </div>
        );
    }
}

export default createFragmentContainer(
    BrandIconList,
    {
        query: graphql`
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
        `
    }
)