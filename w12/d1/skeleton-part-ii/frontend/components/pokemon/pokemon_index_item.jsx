import React from 'react';
import { Link } from 'react-router-dom';

class PokemonIndexItem extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this)
  }

  handleClick(e) {
    this.props.requestSinglePokemon(this.props.poke.id);
  }

  render() {
    return (
      <Link to="/pokemon/:id">
        <li className="pokemon-index-item" onClick={this.handleClick}>
          <span>{this.props.poke.id}</span>
          <img src={this.props.poke.imageUrl} />
          <span>{this.props.poke.name}</span>
        </li>
      </Link>
    );
  }
}

export default PokemonIndexItem;
