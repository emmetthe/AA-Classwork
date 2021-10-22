class Clock {
  constructor() {
    // 1. Create a Date object.
    let time = new Date()
    // 2. Store the hours, minutes, and seconds.
    this.hours = time.getHours();
    this.minutes = time.getMinutes();
    this.seconds = time.getSeconds();
    // 3. Call printTime.
    this.printTime();
    // 4. Schedule the tick at 1 second intervals.
    // let that = this;
    setInterval(this._tick.bind(this), 1000);

  }

  printTime() {
    // Format the time in HH:MM:SS
    let time = [this.hours, this.minutes, this.seconds].join(":");
    // Use console.log to print it.
    console.log(time);
  }

  _tick() {
    // 1. Increment the time by one second.
    this.seconds += 1;

    if (this.seconds === 60) {
      this.seconds = 0;
      this.minutes += 1;
      if (this.minutes === 60) {
        this.hours += 1;
        this.minutes = 0;
      }
    }
    // 2. Call printTime.
    this.printTime();
  }
}
// const clock = new Clock();


// addNumbers
// const readline = require('readline');

// const reader = readline.createInterface({
//   input: process.stdin,
//   output: process.stdout
// });


function addNumbers(sum, numsLeft, callback) {
  if(numsLeft > 0) {
    reader.question('input a number', number => {
      const num = parseInt(`${number}`);
      sum += num;
      console.log(sum)
      addNumbers(sum, numsLeft - 1, callback);
    })
  } else if (numsLeft === 0) {
    callback(sum)
  }
}

// addNumbers(0, 3, sum => console.log(`Total Sum: ${sum}`));


// absurdBubbleSort
const readline = require("readline");

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

// Write this first.
function askIfGreaterThan(el1, el2, callback) {
  // Prompt user to tell us whether el1 > el2; pass true back to the
  // callback if true; else false.

  reader.question(`Is ${el1} greater than ${el2}?`, answer => {
    if (answer === 'yes') {
      callback(true);
    } else {
      callback(false);
    }
    // reader.close(); NOT SUPPOSED TO CLOSE THE TERMINAL WHEN FUNCTION IS IN A RECURSIVE CALL
  });

}
// askIfGreaterThan(1, 2, function() {console.log(`okay`)});

// Once you're done testing askIfGreaterThan with dummy arguments, write this.
function innerBubbleSortLoop(arr, i, madeAnySwaps, outerBubbleSortLoop) {
  // Do an "async loop":
  // 1. If (i == arr.length - 1), call outerBubbleSortLoop, letting it
  //    know whether any swap was made.
  // 2. Else, use `askIfGreaterThan` to compare `arr[i]` and `arr[i +
  //    1]`. Swap if necessary. Call `innerBubbleSortLoop` again to
  //    continue the inner loop. You'll want to increment i for the
  //    next call, and possibly switch madeAnySwaps if you did swap.


  if (i === arr.length - 1) {
    outerBubbleSortLoop(madeAnySwaps);
  } else {
    askIfGreaterThan(arr[i], arr[i + 1], function(isGreaterThan) {
      if (isGreaterThan) {
        [arr[i], arr[i + 1]] = [arr[i + 1], arr[i]];
        madeAnySwaps = true;
      }
      innerBubbleSortLoop(arr, i + 1, madeAnySwaps, outerBubbleSortLoop);
    });
  }
}

function absurdBubbleSort(arr, sortCompletionCallback) {
  let madeAnySwaps = true;

  function outerBubbleSortLoop(madeAnySwaps) {
    // Begin an inner loop if you made any swaps. Otherwise, call
    // `sortCompletionCallback`.

    if (madeAnySwaps) {
      innerBubbleSortLoop(arr, 0, false, outerBubbleSortLoop); 
    } else {
      sortCompletionCallback(arr);
    }

  }
  outerBubbleSortLoop(madeAnySwaps);
  // Kick the first outer loop off, starting `madeAnySwaps` as true.
}

// innerBubbleSortLoop([3,2,1], 0, false);

// absurdBubbleSort([3, 2, 1], function(arr) {
//   console.log("Sorted array: " + JSON.stringify(arr));
//   reader.close();
// });
