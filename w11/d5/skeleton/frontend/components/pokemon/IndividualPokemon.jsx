import React from 'react';

export default class IndividualPokemon extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <li>
          {this.props.poke.name} 
          <img src={this.props.poke.imageUrl} />
        </li>
      </div>
    );
  }
}
