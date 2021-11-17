import React from "react";
import ReactDOM from "react-dom";
import configureStore from './store/store';
import Root from './components/root';

// import * as SessionApi from './util/session_url_util'

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  const store = configureStore();

  window.store = store;
  window.getState = store.getState;
  window.dispatch = store.dispatch;

  // window.logIn = SessionApi.logIn;
  // window.logOut = SessionApi.logOut;
  // window.signUp = SessionApi.signUp;

  ReactDOM.render(<Root store={store}/>, root);

});