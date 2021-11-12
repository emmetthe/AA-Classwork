export const selectAllPokemon = (state) => {
  // debugger
  return Object.values(state.entities.pokemon)
}