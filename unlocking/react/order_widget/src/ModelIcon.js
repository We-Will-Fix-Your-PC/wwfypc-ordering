import React from 'react';
import {graphql, createFragmentContainer} from 'react-relay'

class ModelIcon extends React.Component {
    render() {
        const {displayName, image, id} = this.props.model;

        return (
            <div className="ModelIcon" onClick={() => this.props.onClick(id)}>
                <img src={image} alt={displayName}/>
                <span>{displayName}</span>
            </div>
        );
    }
}

export default createFragmentContainer(
    ModelIcon,
    {
        model: graphql`
          fragment ModelIcon_model on Model {
            id
            displayName
            image
          }
        `
    },
)