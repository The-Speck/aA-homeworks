import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);

    this.state = { result: 0, userInput1: "", userInput2: "" };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.clear.bind(this);
  }


  render() {
    const { userInput1, userInput2, result } = this.state;
    return (
      <div>
        <h1>{ result }</h1>

        <input onChange={ this.setNum1 } value={ userInput1 }/>
        <input onChange={ this.setNum2 } value={ userInput2 }/>

        <br />
        <br />

        <button onClick={ this.add }>+</button>
        <button onClick={ this.subtract }>-</button>
        <button onClick={ this.multiply }>*</button>
        <button onClick={ this.divide }>/</button>

        <br />
        <br />

        <button onClick={ this.clear }>Clear</button>
      </div>
    );
  }

  setNum1(e) {
    const userInput1 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({ userInput1 });
  }

  setNum2(e) {
    const userInput2 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({ userInput2 });
  }

  add(e) {
    e.preventDefault();
    const { userInput1, userInput2 } = this.state;
    const result = userInput1 + userInput2;
    this.setState({ result });
  }

  subtract(e) {
    e.preventDefault();
    const { userInput1, userInput2 } = this.state;
    const result = userInput1 - userInput2;
    this.setState({ result });
  }

  multiply(e) {
    e.preventDefault();
    const { userInput1, userInput2 } = this.state;
    const result = userInput1 * userInput2;
    this.setState({ result });
  }

  divide(e) {
    e.preventDefault();
    const { userInput1, userInput2 } = this.state;
    const result = userInput1 / userInput2;
    this.setState({ result });
  }

  clear(e) {
    e.preventDefault();
    const userInput1 = "";
    const userInput2 = "";
    const result = 0;

    this.setState({ userInput1, userInput2, result });
  }

}

export default Calculator;
