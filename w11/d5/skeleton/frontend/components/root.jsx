import React from "react";
import { Provider } from "react-redux";

const Root = ({store}) => (
  <Provider store={store}>
    {/* <App /> */}
    <h1>test</h1>
  </Provider>
)

export default Root;