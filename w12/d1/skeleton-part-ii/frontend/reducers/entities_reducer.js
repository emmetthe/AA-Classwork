import {combineReducers} from 'redux';
import itemReducer from './items_reducer';
import movesReducer from './moves_reducer';
import pokemonReducer from './pokemon_reducer';

const entitiesReducer = combineReducers({
  pokemon: pokemonReducer,
  items: itemReducer,
  moves: movesReducer
})

export default entitiesReducer;