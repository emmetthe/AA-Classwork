import React from 'react';
import { withRouter, Route, Redirect } from 'react-router-dom';
import { connect } from 'react-redux';

const Auth = ({ path, loggedIn, component: Component, exact }) => (
  <Route path={path} render={(props) => (!loggedIn ? <Component {...props} /> : <Redirect to="/" />)} />
);

const mSTP = (state) => {
  return { loggedIn: Boolean(state.session.id) };
};

export const AuthRoute = withRouter(connect(mSTP, null)(Auth));
