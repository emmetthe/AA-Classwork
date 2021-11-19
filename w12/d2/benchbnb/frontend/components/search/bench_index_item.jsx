import React from "react";

export default class BenchIndexItem extends React.Component {
  constructor(props){
    super(props);
  }

  render(){
    return(
      <li>
        {this.props.bench.description}
      </li>
    )
  }
}