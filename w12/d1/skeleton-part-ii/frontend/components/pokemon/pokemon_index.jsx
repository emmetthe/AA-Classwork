import React from 'react';
import { Route } from 'react-router';
import PokemonDetailContainer from './pokemon_detail_container';
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
        <Route path='pokemon/:id' component={PokemonDetailContainer}/>
        <section className="pokedex">
          <ul>
            {this.props.pokemon.map((poke, idx) => (
              <PokemonIndexItem key={idx} poke={poke} requestSinglePokemon={this.props.requestSinglePokemon} />
            ))}
          </ul>
        </section>
      </div>
    );
  }
}

export default PokemonIndex;
