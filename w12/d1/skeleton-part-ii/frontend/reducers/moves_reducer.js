import { RECEIVE_SINGLE_POKEMON } from '../actions/pokemon_actions';

const movesReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SINGLE_POKEMON:
      let next = action.payload.moves;
      return next;
    default:
      return state;
  }
};

export default movesReducer;