import { connect } from "react-redux"
import { requestSinglePokemon } from "../../actions/pokemon_actions";
import { selectPokemonMovesNames } from "../../reducers/selectors";
import PokemonDetail from "./pokemon_detail";

const mapStateToProps = (state, ownProps) => ({
  pokemon: state.entities.pokemon[ownProps.match.params.id],
  items: state.entities.items,
  moves: selectPokemonMovesNames(state)
})

const mapDispatchToProps = (dispatch) => ({
  requestSinglePokemon: (id) => dispatch(requestSinglePokemon(id))
})

export default connect(mapStateToProps, mapDispatchToProps)(PokemonDetail);