import React from 'react';
import * as Minesweeper from '../minesweeper';

export default class Tile extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(e) {
    const tile = this.props.tile;
    if (e.altKey) {
      tile.flagged = true;
    } else {
      tile.flagged = false;
    }
    this.props.updateGame(tile, tile.flagged);
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
        text = tile.adjacentBombCount();
      }
    }
    if (tile.flagged) {
      tileState = 'flagged';
      text = '\u1f3f';
    }
    return (
      <div className={tileState + ' tile'} onClick={this.handleClick}>
        {text}
      </div>
    );
  }
}
