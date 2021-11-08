import React from 'react';
import * as Minesweeper from '../minesweeper';
import Tile from './tile';

export default class Board extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const tempBoard = this.props.board.grid.map((row, i) => {
      const tempTile = row.map((tile, j) => {
        //  return (new Minesweeper.Tile(this.props.board, [i, j]));
        let unique = i + "" + j;
        return <Tile tile={new Minesweeper.Tile(this.props.board, [i, j])} updateGame={this.props.updateGame} dataId={unique} />;
      });
      return <div>{tempTile}</div>;
    });
    return (
      <div>
        <h1>Tile</h1>
        <div className="game-board">{tempBoard}</div>
      </div>
    );
  }
}
