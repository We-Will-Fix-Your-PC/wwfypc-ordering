import React from 'react';
import {graphql, QueryRenderer} from 'react-relay';
import environment from './environment';
import UnlockForm from "./UnlockForm";
import UnlockPayment from "./UnlockPayment";

export default class UnlockDetails extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            imei: null,
            completed: false,
            email: null,
        };

        this.handleComplete = this.handleComplete.bind(this);
    }

    handleComplete(payment_id, email) {
        this.setState({
            completed: true,
            email: email
        })
    }

    render() {
        return (<QueryRenderer
            environment={environment}
            query={graphql`
              query UnlockDetailsQuery($brandID: ID!, $modelID: ID, $networkID: ID!) {
                phoneUnlock(brand: $brandID, device: $modelID, network: $networkID) {
                  edges {
                    node {
                      id
                      price
                      time
                    }
                  }
                }
                network: node(id: $networkID) {
                  ... on NetworkName {
                    id
                    displayName
                  }
                }
                brand: node(id: $brandID) {
                  ... on Brand {
                    id
                    displayName
                  }
                }
              }
            `}
            variables={{
                brandID: this.props.brand,
                modelID: this.props.model,
                networkID: this.props.network
            }}
            render={({error, props}) => {
                if (error) {
                    return <h2>Error!</h2>;
                }
                if (!props) {
                    return <h2>Loading...</h2>;
                }
                    if (!props.phoneUnlock.edges.length) {
                        return <div className="UnlockDetails">
                            <span className="back" onClick={this.props.onBack}>⬅</span>
                            <h2>
                                Unfortunately, we can't unlock your <span>{props.brand.displayName}</span> from <span>{props.network.displayName}</span>
                            </h2>
                        </div>
                    } else {
                        const node = props.phoneUnlock.edges[0].node;
                        if (!this.state.imei) {
                            return <div className="UnlockDetails">
                                <span className="back" onClick={this.props.onBack}>⬅</span>
                                <h2>
                                    Unlocking your {props.brand.displayName} from {props.network.displayName} will
                                    cost <span>£{node.price.toFixed(2)}</span> and take <span>{node.time}</span>
                                </h2>
                                <UnlockForm onSubmit={(i) => this.setState({imei: i})}/>
                            </div>
                        } else if (!this.state.completed) {
                            return <UnlockPayment
                                id={node.id} imei={this.state.imei} network={this.props.network} onComplete={this.handleComplete}
                            />;
                        } else {
                            return <div className="UnlockDetails">
                                <h2>
                                    Your order to unlock your <span>{props.brand.displayName}</span>
                                    from <span>{props.network.displayName}</span> has been accepted
                                </h2>
                                <h2>We'll be in touch at <span>{this.state.email}</span> when we have futher updates</h2>
                            </div>
                        }
                    }
            }}
        />);
    }
}