import React from 'react';
import ReactDOM from 'react-dom';
import Clock from './frontend/clock';
import Tabs from './frontend/tabs';

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  ReactDOM.render(<Root/>, root);
});

const Root = (props) => {
  return (
    <div>
      <Clock/>
      <Tabs tabsObj={tabsObj}/>
    </div>
  )
  // Tabs props = {tabsObj: [...]}
}

const tabsObj = [ {title:"1",content:"coconuts"},
                  {title:"2",content:"macaroons"},
                  {title:"3",content:"tapioca"}
                ];