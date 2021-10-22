Function.prototype.myBind = function(context) {
  console.log(this); // this is turnOn
  return () => {
    console.log(this);
    return this.apply(context);
  }

  // let that = this;
  // return function() {
  //   console.log(that);
  //   return that.apply(context);
  // }

  // return () => this.apply(context);
  // arrow functions preserve the same context
}

class Lamp {
  constructor() {
    this.name = "a lamp";
  }
}

const turnOn = function() {
  console.log("Turning on " + this.name);
};

const lamp = new Lamp();

turnOn(); // should not work the way we want it to

const boundTurnOn = turnOn.bind(lamp);
const myBoundTurnOn = turnOn.myBind(lamp);

boundTurnOn(); // should say "Turning on a lamp"
myBoundTurnOn(); // should say "Turning on a lamp"

// turnOn.myBind(lamp)();