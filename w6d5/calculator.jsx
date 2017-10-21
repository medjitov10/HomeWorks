import React from 'react';

class Calculator extends React.Component {
  constructor(props){
    super(props);
    this.state = { num1: "", num2: "", result: 0};
    this.setnum1 = this.setnum1.bind(this);
    this.setnum2 = this.setnum2.bind(this);
    this.plus = this.plus.bind(this);
    this.minus = this.minus.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.clear.bind(this);
  }

  setnum1(e) {
    let num1 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({ num1 });
  }
  setnum2(e) {
    let num2 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({ num2 });
  }

  plus(e) {
    e.preventDefault();
    let result = this.state.num2 + this.state.num1;
    this.setState({ result });
  }

  minus(e) {
    e.preventDefault();
    let result = this.state.num1 - this.state.num2;
    this.setState({ result });
  }

  multiply(e) {
    e.preventDefault();
    let result = this.state.num1 * this.state.num2;
    this.setState({ result });
  }

  divide(e) {
    e.preventDefault();
    let result = this.state.num1 / this.state.num2;
    this.setState({ result });
  }

  clear(e) {
    e.preventDefault();
    this.setState({ num1: "", num2: "", result: 0});
  }


  render() {
    return (
      <div>
        <h1>{this.state.result}</h1>
        <input value={this.state.num1} onChange={this.setnum1}/>
        <input value={this.state.num2} onChange={this.setnum2}/>
        <button onClick={this.clear}>Clear</button>
        <br />
        <button onClick={this.plus}>+</button>
        <button onClick={this.minus}>-</button>
        <button onClick={this.multiply}>*</button>
        <button onClick={this.divide}>/</button>
      </div>
    );
  }
}

export default Calculator;
