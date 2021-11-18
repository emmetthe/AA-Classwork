import React from "react";
import ReactDOM from "react-dom";
import configureStore from './store/store';
import Root from './components/root';

import * as SessionAction from './actions/session_actions'

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  let store = configureStore();

if (window.currentUser) {
  const preloadedState = {
    entities: {
      users: { [window.currentUser.id]: window.currentUser }
    },
    session: { id: window.currentUser.id }
  };
  store = configureStore(preloadedState);
  delete window.currentUser;
} else {
  store = configureStore();
}

// tests --------------------------
    window.store = store;
    window.getState = store.getState;
    window.dispatch = store.dispatch;
  
    window.login = SessionAction.login;
    window.logout = SessionAction.logout;
    window.signup = SessionAction.signup;

  ReactDOM.render(<Root store={store}/>, root);

});