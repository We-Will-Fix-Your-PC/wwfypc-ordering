import React from 'react';

export default class UnlockForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            imei: '',
            imeiValid: false
        };
        this.handleIMEIChange = this.handleIMEIChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    static valid_luhn(value) {
        if (/[^0-9-\s]+/.test(value)) return false;

        // The Luhn Algorithm. It's so pretty.
        let nCheck = 0, nDigit = 0, bEven = false;
        value = value.replace(/\D/g, "");

        for (let n = value.length - 1; n >= 0; n--) {
            const cDigit = value.charAt(n);
            nDigit = parseInt(cDigit, 10);

            if (bEven) {
                if ((nDigit *= 2) > 9) nDigit -= 9;
            }

            nCheck += nDigit;
            bEven = !bEven;
        }

        return (nCheck % 10) === 0;
    }

    handleNameChange(event) {
        let new_val = event.target.value;
        this.setState({
            name: new_val,
            nameValid: new_val.length >= 1
        });
    }

    handleIMEIChange(event) {
        let new_val = event.target.value;
        let valid = false;
        if (!(UnlockForm.valid_luhn(new_val) && new_val.length === 15)) {
            this.refs.imei.setCustomValidity("Invalid IMEI");
        } else {
            this.refs.imei.setCustomValidity("");
            valid = true;
        }
        this.setState({
            imei: new_val,
            imeiValid: valid
        });
    }

    handleSubmit() {
        if (this.state.imeiValid) {
            this.props.onSubmit(this.state.imei);
        }
        return false;
    }

    render() {
        return (<form onSubmit={this.handleSubmit}>
            <label>
                Your IMEI number (can be found by dialing <code>*#06#</code>):
                <input type="text" required value={this.state.imei} onChange={this.handleIMEIChange} ref="imei"/>
            </label>
            <button type="submit">
                Order
            </button>
        </form>);
    }
}