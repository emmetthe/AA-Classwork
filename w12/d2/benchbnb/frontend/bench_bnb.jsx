import React from "react";
import ReactDOM from "react-dom";
import * as SessionApi from './util/session_url_util'

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  // const store = 
  console.log('hello')
  window.logIn = SessionApi.logIn;
  window.logOut = SessionApi.logOut;
  window.signUp = SessionApi.signUp;
  ReactDOM.render(<h1>Welcome to BenchBnB</h1>, root);

});