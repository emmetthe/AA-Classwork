import React from 'react';
import { Tile, Board } from '../minesweeper';

class Game extends React.Component {
  constructor(props) {
    super(props);
    this.state = { board: new Board() };
  }

  updateGame() {

  }

  render() {
    return <Board board={this.state.board} />;
  }
}
