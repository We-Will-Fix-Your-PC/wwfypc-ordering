import environment from './environment';
import React from 'react';
import ReactDOM from 'react-dom';
import {graphql, QueryRenderer} from 'react-relay';

export default class App extends React.Component {
  render() {
    return (<QueryRenderer
        environment={environment}
        query={graphql`
          query widgetNetworkQuery {
            networks {
              edges {
                node {
                  id
                  name
                  displayName
                }
              }
            } 
          }
        `}
        variables={{}}
        render={({error, props}) => {
          if (error) {
            return <div>Error!</div>;
          }
          if (!props) {
            return <div>Loading...</div>;
          }
          console.log(props);
          return <div>{props.networks.edges.map(e => {
              return <div key={e.node.id}>
                  {e.node.name}
                  {e.node.displayName}
              </div>
          })}</div>;
        }}
    />);
  }
}

window.makeUnlockingOrderWidget = (container) => {
    ReactDOM.render(<App/>, container);
};