function sumArguments() {
  let total = 0;
  for (let i=0; i<arguments.length; i++) {
    total += arguments[i]
  }
  return total;
}

function sumRest(...args) {
  let total = 0;
  for (let i=0; i<args.length; i++) {
    total += args[i];
  }
  return total;
}

// console.log(sumArguments(1,2,3));
// console.log(sumRest(1, 2, 3));

Function.prototype.myBind = function (context) {
  const value = this; //saves the function context
  const args = Array.from(arguments).slice(1); //gets everything but the first argument (the context)
  return function _bound() {
    const callArgs = args.concat(Array.from(arguments));
    return value.apply(context, callArgs)
  }

}

class Cat {
  constructor(name) {
    this.name = name;
  }

  says(sound, person) {
    console.log(`${this.name} says ${sound} to ${person}!`);
    return true;
  }
}

class Dog {
  constructor(name) {
    this.name = name;
  }
}

// const markov = new Cat("Markov");
// const pavlov = new Dog("Pavlov");

function curriedSum(numTimes) {
  let numCalls = 0;
  let total = 0;
  return function sum(num) {
    total += num;
    numCalls += 1;
    if(numCalls < numTimes) {
      return sum;
    } else {
      return total;
    }
  }
}

// const sum = curriedSum(4);
// console.log(sum(5)(30)(20)(1)); // => 56

Function.prototype.curry = function (numArgs) {
  const args = [];
  const func = this;
  //apply(context, [args])
  function curried(arg) {
    args.push(arg);
    if (args.length === numArgs) {
      return func(args);
      // return args;
    } else {
      return curried;
    }
  }
  return curried;
}

function sum(nums) {
  let total = 0
  for (i=0; i<nums.length; i++) {
    total += nums[i]
  }
  return total
}

const args = sum.curry(4);
let arr = (args(1)(2)(3)(4)); // => [5,4,3,2]
// console.log(sum(5)(30)(20)(1)); // => 56
console.log(arr)

