import React from 'react';

class ItemCount extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
            number: 1
        }

        this.updateNumber = this.updateNumber.bind(this);
        this.onClick = this.onClick.bind(this);
    }

    updateNumber(e) {
        const new_val = e.target.value;
        this.setState({
            number: parseInt(new_val, 10)
        })
    }

    onClick(e) {
        this.props.onClick(this.state.number);
    }

    render() {
        return (
            <div className="ItemCount">
                <input type="number" value={this.state.number} onChange={this.updateNumber}/>
                <button onClick={this.onClick}>Select</button>
            </div>
        );
    }
}

export default ItemCount;