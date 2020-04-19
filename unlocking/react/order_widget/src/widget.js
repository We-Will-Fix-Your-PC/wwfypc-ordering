import environment from './environment';
import React from 'react';
import ReactDOM from 'react-dom';
import {graphql, QueryRenderer, fetchQuery} from 'react-relay';
import NetworkIconList from "./NetworkIconList";
import BrandIconList from "./BrandIconList";
import ModelIconList from "./ModelIconList";
import UnlockDetails from "./UnlockDetails";
import './style.scss';

export default class App extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            network: null,
            brand: null,
            model: null,
            models: null,
        };

        this.selectBrand = this.selectBrand.bind(this);
    }

    selectBrand(id) {
        this.setState({brand: id});
        fetchQuery(environment, graphql`
            query widgetBrandQuery($brandID: ID!) {
              node(id: $brandID) {
                id
                ... on Brand {
                  modelSet {
                    edges {
                      node {
                        id
                        ...ModelIcon_model
                      }
                    }
                  }
                }
              }
            }
        `, {brandID: id})
            .then(data => {
                this.setState({
                    models: data.node.modelSet.edges
                });
            })
    }

    render() {
        return (<QueryRenderer
            environment={environment}
            query={graphql`
              query widgetNetworkQuery {
                ...NetworkIconList_query
                ...BrandIconList_query
              }
            `}
            variables={{}}
            render={({error, props}) => {
                return <div className="UnlockOrderWidget">
                    {(() => {
                        if (error) {
                            return <h2>Error!</h2>;
                        }
                        if (!props) {
                            return <h2>Loading...</h2>;
                        }
                        if (!this.state.network) {
                            return <div className="SelectNetwork">
                                <h2>Select the network the phone is currently locked to</h2>
                                <NetworkIconList query={props} onClick={id => this.setState({network: id})}/>
                            </div>;
                        } else if (!this.state.brand) {
                            return <div className="SelectBrand">
                                <span className="back" onClick={() => this.setState({network: null})}>⬅</span>
                                <h2>Select the brand of the phone</h2>
                                <BrandIconList query={props} onClick={this.selectBrand}/>
                            </div>;
                        } else if (!this.state.models) {
                            return <h2>Loading...</h2>
                        } else if (!this.state.model && this.state.models.length) {
                            return <div className="SelectModel">
                                <span className="back" onClick={() => this.setState({brand: null})}>⬅</span>
                                <h2>Select the model of the phone</h2>
                                <ModelIconList models={this.state.models} onClick={id => this.setState({model: id})}/>
                            </div>;
                        } else {
                            return <UnlockDetails
                                brand={this.state.brand} model={this.state.model} network={this.state.network}
                                onBack={() => this.setState({model: null, brand: null})}
                            />
                        }
                    })()}
                </div>;
            }}
        />);
    }
}

window.makeUnlockingOrderWidget = (container) => {
    ReactDOM.render(<App/>, container);
};