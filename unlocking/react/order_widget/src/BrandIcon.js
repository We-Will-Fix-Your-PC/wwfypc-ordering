import React from 'react';
import {graphql, createFragmentContainer} from 'react-relay'

class BrandIcon extends React.Component {
    render() {
        const {displayName, image, id} = this.props.brand;

        return (
            <div className="BrandIcon" onClick={() => this.props.onClick(id)}>
                <img src={image} alt={displayName}/>
                <span>{displayName}</span>
            </div>
        );
    }
}

export default createFragmentContainer(
    BrandIcon,
    {
        brand: graphql`
          fragment BrandIcon_brand on Brand {
            id
            displayName
            image
          }
        `
    },
)