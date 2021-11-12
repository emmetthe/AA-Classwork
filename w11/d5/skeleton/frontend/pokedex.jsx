import React from 'react';
import ReactDOM from 'react-dom';
import * as API_Util from './util/api_util';
import { receiveAllPokemon } from './actions/pokemon_actions'

document.addEventListener('DOMContentLoaded', () => {
  const rootEl = document.getElementById('root');
  ReactDOM.render(<h1>Pokedex</h1>, rootEl);


  window.fetchAllPokemon = API_Util.fetchAllPokemon;
  window.receiveAllPokemon = receiveAllPokemon;
});