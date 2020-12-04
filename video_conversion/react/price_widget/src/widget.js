import environment from './environment';
import React from 'react';
import ReactDOM from 'react-dom';
import {graphql, QueryRenderer, fetchQuery} from 'react-relay';
import FormatList from "./FormatList";
import ItemCount from "./ItemCount";
import Price from "./Price";
import './style.scss';

export default class App extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            originalFormat: null,
            itemCount: null,
        };
    }

    render() {
        return (<QueryRenderer
            environment={environment}
            query={graphql`
              query widgetFormatQuery {
                ...FormatList_query
              }
            `}
            variables={{}}
            render={({error, props}) => {
                return <div className="VideoPriceWidget">
                    {(() => {
                        if (error) {
                            return <h2>Error!</h2>;
                        }
                        if (!props) {
                            return <h2>Loading...</h2>;
                        }
                        if (!this.state.originalFormat) {
                            return <div className="SelectFormat">
                                <h1>Select the format you want to convert from</h1>
                                <FormatList query={props} onClick={id => this.setState({originalFormat: id})}/>
                            </div>;
                        } else if (!this.state.itemCount) {
                            return <div className="SelectCount">
                                <span className="back" onClick={() => this.setState({originalFormat: null})}>⬅</span>
                                <h1>How many {this.state.originalFormat.groupName}?</h1>
                                <ItemCount onClick={count => this.setState({itemCount: count})}/>
                            </div>;
                        } else {
                            return <div className="SelectPrice">
                                <span className="back" onClick={() => this.setState({itemCount: null})}>⬅</span>
                                <h1>{this.state.itemCount} {this.state.originalFormat.groupName}</h1>
                                <Price format={this.state.originalFormat} count={this.state.count} />
                            </div>
                        }
                    })()}
                </div>;
            }}
        />);
    }
}

window.makeVideoPriceWidget = (container) => {
    ReactDOM.render(<App/>, container);
};