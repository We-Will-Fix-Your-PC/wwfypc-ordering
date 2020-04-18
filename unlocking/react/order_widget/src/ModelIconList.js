import React from 'react';
import ModelIcon from "./ModelIcon";

export default class ModelIconList extends React.Component {
    render() {
        return <div className="ModelIcons">
            {this.props.models.map(edge => (
                <ModelIcon model={edge.node} key={edge.node.id} onClick={this.props.onClick} />
            ))}
        </div>;
    }
}