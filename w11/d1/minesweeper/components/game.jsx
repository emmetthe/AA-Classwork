import React from 'react';
import * as Minesweeper from '../minesweeper';
import Board from './board';

export default class Game extends React.Component {
  constructor(props) {
    super(props);
    this.updateGame = this.updateGame.bind(this);
    let board = new Minesweeper.Board(8, 8);
    this.state = {board: board};
    this.restartGame = this.restartGame.bind(this);
  }

  updateGame(tile, flagged) {
    if (flagged) {
      tile.toggleFlag();
    } else {
      tile.explore();
    }
    this.setState({ board: this.state.board })
    console.log(tile)
  }

  restartGame() {
    let board = new Minesweeper.Board(8, 8);
    this.setState({board: board});
  }

  render() {
    let modal = <div></div>
    if (this.state.board.lost()) {
      let text = "You Lost";
      modal = <div>{text}<button onClick={this.restartGame}></button></div>
    } else if (this.state.board.won()) {
      let text = "You Won";
      modal = <div>{text}<button onClick={this.restartGame}></button></div>
    }
    return <div> {modal} <Board board={this.state.board} updateGame={this.updateGame} /> </div>
  }
}

