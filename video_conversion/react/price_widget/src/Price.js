import React from 'react';
import environment from "../../../../unlocking/react/order_widget/src/environment";
import {graphql, QueryRenderer} from 'react-relay';

class Price extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            selectedExtras: []
        };

        this.selectExtra = this.selectExtra.bind(this);
    }

    selectExtra(e, id) {
        let selectedExtras = this.state.selectedExtras;
        const checked = e.target.checked;
        if (checked && !selectedExtras.includes(id)) {
            selectedExtras.push(id)
        } else if (!checked) {
            const i = selectedExtras.indexOf(id);
            if (i > -1) {
                selectedExtras.splice(i, 1);
            }
        }
        this.setState({
            selectedExtras: selectedExtras,
        });
    }

    render() {
        return (<QueryRenderer
            environment={environment}
            query={graphql`
              query PriceQuery($formatID: ID!, $count: Int!) {
                format: node(id: $formatID) {
                  ... on OriginalFormat {
                    id
                    groupName(count: $count)
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
                    <h1>{this.props.count} {props.format.groupName}</h1>
                    <div className="PriceSummary">
                        <div className="PriceExtras">
                            <table>
                                <tbody>
                                {props.format.originalformatextraSet.edges.map(n => {
                                    return <tr key={n.node.id}>
                                        <th>
                                            <label htmlFor={n.node.id}>{n.node.name}</label>
                                        </th>
                                        <td>&pound;{n.node.price}</td>
                                        <td>
                                            <input type="checkbox"
                                                   id={n.node.id}
                                                   checked={this.state.selectedExtras.includes(n.node.id)}
                                                   onChange={(e) => this.selectExtra(e, n.node.id)}
                                            />
                                        </td>
                                    </tr>
                                })}
                                </tbody>
                            </table>
                        </div>
                        <div className="PriceTotals">
                            <table>
                                <tbody>
                                <tr>
                                    <th>Subtotal</th>
                                    <td>&pound;{parseFloat(props.format.price).toFixed(2)}</td>
                                </tr>
                                {props.format.originalformatextraSet.edges.map(n => {
                                    if (this.state.selectedExtras.includes(n.node.id)) {
                                        return <tr key={n.node.id}>
                                            <th>{n.node.name}</th>
                                            <td>&pound;{parseFloat(n.node.price).toFixed(2)}</td>
                                        </tr>
                                    } else {
                                        return null
                                    }
                                })}
                                <tr>
                                    <th>Total</th>
                                    <td>
                                        &pound;{(
                                            parseFloat(props.format.price) +
                                            props.format.originalformatextraSet.edges
                                                .filter(n => this.state.selectedExtras.includes(n.node.id))
                                                .reduce((a, n) => a + parseFloat(n.node.price), 0)
                                        ).toFixed(2)}
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            }}
        />);
    }
}

export default Price;