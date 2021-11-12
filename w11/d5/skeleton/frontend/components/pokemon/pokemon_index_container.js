import { connect } from 'react-redux';
import { requestAllPokemon } from '../../actions/pokemon_actions';
import { selectAllPokemon } from '../../reducers/selector';
import PokemonIndex from './pokemon_index';

// const mapStateToProps = state => ({

// })

const mapDispatchToProps = (dispatch) => ({
  pokemon: selectAllPokemon(requestAllPokemon(dispatch))
});

export default connect(null, mapDispatchToProps)(PokemonIndex);
