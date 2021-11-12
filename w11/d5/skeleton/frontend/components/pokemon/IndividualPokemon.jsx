import React from "react";

export default class IndividualPokemon extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <li>{this.props.poke.name}</li>
        <li>{this.props.poke.imageURL}</li>
      </div>
    )
  }
}