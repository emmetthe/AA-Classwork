Array.prototype.uniq = function() {
  let r = []
  for (let i = 0; i < this.length; i++ ) {
    // if (r.includes(this[i])) {
    if (r.indexOf(this[i]) === -1) {
      r.push(this[i]);
    }
  }
  return r;
};

// console.log([1, 2, 2, 3, 3, 3].uniq());

Array.prototype.twoSum = function() {
  let pairs = []
  for(let i = 0; i < this.length - 1; i++) {
    for(let j = 1; j < this.length; j++) {
      if ((i < j) && (this[i] + this[j] === 0)) {
        pairs.push([i, j]);
      }
    }
  }
  return pairs;
}

// console.log([1, 2, 2, 3, 3, -3].twoSum())

Array.prototype.transpose = function() {
  let result = [];
  for(let col = 0; col < this[0].length; col++) {
    let subArray = [];
    for(let row = 0; row < this.length; row++) {
      subArray.push(this[row][col]);
    }
    result.push(subArray);
  }
  return result;
}

// console.log([
//   [1, 2], 
//   [2, 3], 
//   [3]
// ].transpose());

