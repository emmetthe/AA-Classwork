import React from 'react';

export default class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = {time: new Date()};
    this.tick = this.tick.bind(this);
  }

  tick() {
    this.setState({time: new Date()});
  }

  componentDidMount() {
    this.intervalId = setInterval(this.tick, 1000);
  }

  componentWillUnmount() {
    clearInterval(this.intervalId);
  }

  render() {
    return (
      <div className="clock">
        <h1>clock</h1>
        <p>{this.state.time.getHours()}:{this.state.time.getMinutes()}:{this.state.time.getSeconds()}</p>
        <br/>
        <h1>time</h1>
        <p>{this.state.time.getDay()} {this.state.time.getMonth()} {this.state.time.getDate()} {this.state.time.getFullYear()}</p>
      </div>
    );
  }
}