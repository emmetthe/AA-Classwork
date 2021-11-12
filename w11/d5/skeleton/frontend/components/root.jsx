import React from "react";
import { Provider } from "react-redux";
import Pokemon_index_container from "./pokemon/Pokemon_index_container";

const Root = ({store}) => (
  <Provider store={store}>
    <Pokemon_index_container/>
    {/* <h1>test</h1> */}
  </Provider>
)

export default Root;