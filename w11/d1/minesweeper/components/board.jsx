import React from 'react';
import * as Minesweeper from '../minesweeper';
import Tile from './tile';

export default class Board extends React.Component {
  constructor(props) {
    super(props);
    this.renderRow = this.renderRow.bind(this);
  }

  renderRow() {

  }

  render() {
    // const tempBoard = this.props.board.grid.map((row, i) => {
    //   const tempTile = row.map((tile, j) => {
    //     //  return (new Minesweeper.Tile(this.props.board, [i, j]));
    //     let unique = i + "" + j;
    //     console.log(unique)
    //     return <Tile tile={new Minesweeper.Tile(this.props.board, [i, j])} updateGame={this.props.updateGame} key={unique} />;
    //   });
    //   return <div>{tempTile}</div>;
    // });
    return this.props.board.grid.map((row => (
      <div>
        <h1>Tile</h1>
        <div>{this.renderRow}</div>
      </div>

    )
    ))
  }
}
