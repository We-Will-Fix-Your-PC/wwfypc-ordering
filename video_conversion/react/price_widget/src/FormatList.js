import React from 'react';
import {createFragmentContainer, graphql} from 'react-relay'

class FormatList extends React.Component {
    render() {
        const {originalFormats} = this.props.query;

        return (
            <div className="Formats">
                {originalFormats.edges.map(edge => (
                    <div className="Format" key={edge.node.id} onClick={() => this.props.onClick(edge.node)}>
                        {edge.node.image ? <img src={edge.node.image} alt=""/> : null}
                        <h2>{edge.node.name}</h2>
                    </div>
                ))}
            </div>
        );
    }
}

export default createFragmentContainer(
    FormatList,
    {
        query: graphql`
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
        `
    }
)