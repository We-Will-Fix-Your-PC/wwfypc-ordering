import React from 'react';
import environment from "../../../../unlocking/react/order_widget/src/environment";

class Price extends React.Component {
    constructor(props) {
        super(props);
    }

    render() {
        return (<QueryRenderer
            environment={environment}
            query={graphql`
              query UnlockDetailsQuery($formatID: ID!, $count: Int!) {
                format: node(id: $formatID) {
                  ... on OriginalFormat {
                    id
                    groupName
                    price(count: $count)
                    originalformatextraSet {
                        edges {
                            node {
                                id
                                name
                                price
                                image
                            }
                        }
                    }
                  }
                }
              }
            `}
            variables={{
                formatID: this.props.format.id,
                count: this.props.count
            }}
            render={({error, props}) => {
                if (error) {
                    return <h2>Error!</h2>;
                }
                if (!props) {
                    return <h2>Loading...</h2>;
                }
                return <div className="Price">
                    
                </div>
            }}
        />);
    }
}

export default Price;