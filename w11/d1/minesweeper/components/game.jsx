import React from 'react';
import * as Minesweeper from '../minesweeper';
import Board from './board';

export default class Game extends React.Component {
  constructor(props) {
    super(props);
    this.updateGame = this.updateGame.bind(this);
    let board = new Minesweeper.Board(8, 8)
    this.state = {board: board};
  }

  updateGame() {

  }

  render() {
    return <div> <Board board={this.state.board} updateGame={this.updateGame} /> </div>
  }
}

