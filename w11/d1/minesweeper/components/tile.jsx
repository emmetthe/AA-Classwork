import React from 'react';
import * as Minesweeper from '../minesweeper';

export default class Tile extends React.Component {
  constructor(props) {
    super(props);
  }


  render() {
    const tile = this.props.tile;
    let text = "";
    if (tile.explored) {
      if (tile.bombed) {
        text = "\u2620";
      } else {
        text = tile.adjacentBombCount;
      }
    }
    if (tile.flagged) {
      text = "\u1f3f"
    }
    return <div>
      {text}
    </div>
  }

}