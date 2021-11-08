import React from 'react';
import * as Minesweeper from '../minesweeper';
import Tile from './tile'

export default class Board extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const tempBoard = this.props.board.grid.map((row, i) => {
      row.map((tile, j) => {
       return (new Minesweeper.Tile(this.props.board, [i, j]));
      });
      return <div key={i}></div>;
    });
    return (
      <div>
        <h1>Tile</h1>
        <div><Tile tile={tempBoard}/></div>
      </div>
    );
  }
}
