import React from 'react';
import ReactDOM from 'react-dom';
import * as API_Util from './util/api_util';
import { receiveAllPokemon, requestAllPokemon } from './actions/pokemon_actions'
import configureStore from './store/store'
import { selectAllPokemon } from './reducers/selector'
import Root from './components/root'


document.addEventListener('DOMContentLoaded', () => {
  const rootEl = document.getElementById('root');
  const store = configureStore();
  ReactDOM.render(<Root store={store}/>, rootEl);

  window.getState = store.getState;
  window.dispatch = store.dispatch;
  window.fetchAllPokemon = API_Util.fetchAllPokemon;
  window.receiveAllPokemon = receiveAllPokemon;
  window.requestAllPokemon = requestAllPokemon;
  window.selectAllPokemon = selectAllPokemon;
});