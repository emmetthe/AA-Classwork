import React from 'react';
import * as Minesweeper from '../minesweeper';

export default class Tile extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const tile = this.props.tile;
    let text = '';
    let tileState = 'hidden';
    if (tile.explored) {
      if (tile.bombed) {
        tileState = 'bombed';
        text = '\u2620';
      } else {
        tileState = 'revealed';
        text = tile.adjacentBombCount;
      }
    }
    if (tile.flagged) {
      tileState = 'flagged';
      text = '\u1f3f';
    }
    return <div className={tileState + " tile"} key={this.props.key}>{text}</div>;
  }
}
