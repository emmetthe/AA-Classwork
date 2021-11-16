export const selectAllPokemon = (state) => {
  return Object.values(state.entities.pokemon);
}

export const selectPokemonMovesNames = (state) => {
  return Object.values(state.entities.moves);
}
  