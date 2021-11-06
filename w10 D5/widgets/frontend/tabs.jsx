import React from 'react';

export default class Tabs extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      index: 0
    };
  }

  render() {
    // console.log(this.props.tabsObj);
    return (
      <div>
        <h1>tabs</h1>
        <ul>
          {this.props.tabsObj.forEach(element =>
            <h1> {element.title} </h1>
          )}
        </ul>
        <article>
          {this.props.tabsObj[this.state.index].content}
        </article>
      </div>
    )
    // reminder props = {tabsObj: [...]}
  }
}
