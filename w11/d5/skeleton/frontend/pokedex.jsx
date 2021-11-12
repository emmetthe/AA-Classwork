import React from 'react';
import ReactDOM from 'react-dom';
import * as API_Util from './util/api_util';
import { receiveAllPokemon, requestAllPokemon } from './actions/pokemon_actions'
import configureStore from './store/store'
import { selectAllPokemon } from './reducers/selector'


document.addEventListener('DOMContentLoaded', () => {
  const rootEl = document.getElementById('root');
  const store = configureStore();
  ReactDOM.render(<h1>Pokedex</h1>, rootEl);

  window.getState = store.getState;
  window.dispatch = store.dispatch;
  window.fetchAllPokemon = API_Util.fetchAllPokemon;
  window.receiveAllPokemon = receiveAllPokemon;
  window.requestAllPokemon = requestAllPokemon;
  window.selectAllPokemon = selectAllPokemon;
});