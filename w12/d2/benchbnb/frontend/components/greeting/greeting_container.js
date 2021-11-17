import { connect } from "react-redux";
import Greeting from './greeting';
import {logout} from '../../actions/session_actions'

const mSTP = ({ session, entities: { users } }) => {
  return {
  currentUser: users[session.id]
  }
}

const mDTP = (dispatch) => {
  return {
    logout: () => dispatch(logout())
  }
}

export default connect(mSTP, mDTP)(Greeting);