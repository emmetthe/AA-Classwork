import React from 'react';
import PokemonDetail from './pokemon_detail';
import PokemonIndexItem from './pokemon_index_item';

class PokemonIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestAllPokemon();
  }

  render() {
    return (
      <div>
        <section className="pokedex">
          <ul>
            {this.props.pokemon.map((poke, idx) => (
              <PokemonIndexItem key={idx} poke={poke} requestSinglePokemon={this.props.requestSinglePokemon} />
            ))}
          </ul>
        </section>
        <PokemonDetail />
      </div>
    );
  }
}

export default PokemonIndex;
