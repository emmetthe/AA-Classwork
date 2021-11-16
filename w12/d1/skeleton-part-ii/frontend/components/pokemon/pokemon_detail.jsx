import React from "react";

class PokemonDetail extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestSinglePokemon(this.props.match.params.pokemonId)
  }

  // componentDidUpdate(prevProps) {
  //   if (prevProps.match.params.pokemonId !== this.props.match.params.pokemonId) {
  //     this.props.requestSinglePokemon(this.props.match.params.pokemonId);
  //   }
  // }

  render() {
    return null
  }

}

export default PokemonDetail;