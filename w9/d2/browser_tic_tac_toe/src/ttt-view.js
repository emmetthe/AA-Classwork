const Board = require("../ttt_node/board");
class View {
  constructor(game, el) {
    this.game = game;
    this.el = el;
    this.bindEvents();
  }

  setupBoard() {
    const ul = document.createElement("ul");
    for(let i = 0; i < 3; i++) {
      for(let j = 0; j < 3; j++) {
        const li = document.createElement("li");
        // li.dataset.pos = JSON.stringify([i, j]);
        li.setAttribute = ("data-pos",`${i}-${j}`);
        ul.append(li);
      }
    }
    this.el.append(ul);
  }
  
  bindEvents() {
    this.el.addEventListener('click', this.handleClick);
  }

  handleClick(e) {
    const clickedCell = e.target;
    let pos = clickedCell.getAttribute("data-pos").split('-');
    let originalPos = [];
    for (let i = 0; i < pos.length; i++) {
      originalPos.push(pos[i]);
    }
    // console.log(clickedCell);
    this.makeMove(originalPos);
  }

  makeMove(square) {
    this.game.playMove(square);
    let mark = document.createTextNode(`${this.game.currentPlayer}`);
    square.appendChild(mark);
  }

}

module.exports = View;
