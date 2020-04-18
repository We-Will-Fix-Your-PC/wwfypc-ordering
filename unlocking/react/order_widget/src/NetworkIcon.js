import React from 'react';
import {graphql, createFragmentContainer} from 'react-relay'

class NetworkIcon extends React.Component {
    render() {
        const {displayName, image, id} = this.props.network;

        return (
            <div className="NetworkIcon" onClick={() => this.props.onClick(id)}>
                <img src={image} alt={displayName}/>
                <span>{displayName}</span>
            </div>
        );
    }
}

export default createFragmentContainer(
    NetworkIcon,
    {
        network: graphql`
          fragment NetworkIcon_network on NetworkName {
            id
            displayName
            image
          }
        `
    },
)