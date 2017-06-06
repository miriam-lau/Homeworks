import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = { num1: 0, num2: 0, result: 0};
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
  }

  setNum1(e) {
    console.log(e);
    let num1 = e.target.value ? parseInt(e.target.value) : 0;
    this.setState({ num1 });
  }

  setNum2(e) {
    let num2 = e.target.value ? parseInt(e.target.value) : 0;
    this.setState({ num2 });
  }

  add(e) {
    e.preventDefault();
    let result = (this.state.num1 + this.state.num2);
    this.setState({ result })
  }

  subtract(e) {
    e.preventDefault();
    let result = (this.state.num1 - this.state.num2);
    console.log(this.state.num1);
    console.log(this.state.num2);
    console.log(result);
    this.setState({ result })
  }

  multiply(e) {
    e.preventDefault();
    let result = (this.state.num1 * this.state.num2);
    this.setState({ result })
  }

  divide(e) {
    e.preventDefault();
    let result = (this.state.num1 / this.state.num2);
    this.setState({ result })
  }

  clear(e) {
    e.preventDefault();
    this.setState({ num1: 0});
    this.setState({ num2: 0});
    this.setState({ result: 0});
  }

  render() {
    const { num1, num2, result } = this.state;
    return (
      <div>
        <p>hello</p>
        <h1>{ this.state.result }</h1>
        <input onChange={ this.setNum1 } value={ num1 } />
        <input onChange={ this.setNum2 } value={ num2 } />
        <br />
        <button onClick={ this.clear }>CLEAR</button>
        <br />
        <button onClick={ this.add }>+</button>
        <button onClick={ this.subtract }>-</button>
        <button onClick={ this.multiply }>*</button>
        <button onClick={ this.divide }>/</button>
      </div>
    );
  }
}

export default Calculator;
