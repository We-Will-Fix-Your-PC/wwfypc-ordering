import React from 'react';
import environment from "./environment";
import {graphql, QueryRenderer} from "react-relay";

class PaymentForm extends React.Component {
    componentDidMount() {
        window.makePaymentFormFromData(this.refs.payment, {
            environment: process.env.NODE_ENV  === 'production' ? "LIVE" : "TEST",
            customer: {
                request_name: true,
                request_email: true,
                request_phone: true,
            },
            items: [{
                type: "unlock",
                title: this.props.title,
                data: this.props.data,
                quantity: 1,
                price: this.props.price,
                sig: this.props.sig
            }]
        }, this.props.onComplete, window.acceptsHeader);
    }

    render() {
        return <div ref="payment" className="UnlockPayment payment"/>
    }
}

export default class UnlockPayment extends React.Component {

    render() {
        return <QueryRenderer
            environment={environment}
            query={graphql`
              query UnlockPaymentQuery($unlockID: ID!, $networkID: ID!, $imei: String!) {
                unlock: node(id: $unlockID) {
                  ... on PhoneUnlock {
                    id
                    price
                    title(network: $networkID)
                    data(imei: $imei)
                    sig(imei: $imei, network: $networkID)
                  }
                }
              }
            `}
            variables={{
                imei: this.props.imei,
                networkID: this.props.network,
                unlockID: this.props.id,
            }}
            render={({error, props}) => {
                if (error) {
                    return <h2>Error!</h2>;
                }
                if (!props) {
                    return <h2>Loading...</h2>;
                }
                return <PaymentForm
                    title={props.unlock.title} data={props.unlock.data} price={props.unlock.price} sig={props.unlock.sig}
                    onComplete={this.props.onComplete}
                />;
            }}
        />
    }
}