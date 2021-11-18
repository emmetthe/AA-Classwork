import React from "react";
import { connect } from "react-redux";
import SessionForm from './session_form';
import { Link } from "react-router-dom";
import { signup } from "../../actions/session_actions";

const mSTP = (state) => ({
  formType: 'signup',
  errors: state.errors.session,
  navLink: <Link to="/login">log in instead</Link>
})

const mDTP = (dispatch) => ({
  processForm: (user) => dispatch(signup(user))
})

export default connect(mSTP, mDTP)(SessionForm)