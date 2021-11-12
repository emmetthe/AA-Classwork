import React from "react";
import IndividualPokemon from "./IndividualPokemon"

export default class PokemonIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestAllPokemon()
  }

  render() {
    return (
      <ul>
        {this.props.pokemon.map((poke) => (
          <IndividualPokemon poke={poke} key={poke.id} />
        ))}
      </ul>
    )
  }
}