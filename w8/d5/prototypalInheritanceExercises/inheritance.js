Function.prototype.inherits = function (superClass) {
  let subClass = this;
  function Surrogate() {}
  Surrogate.prototype = superClass.prototype;
  subClass.prototype = new Surrogate();
  subClass.prototype.constructor = subClass
  superClass.call(subClass);
  // subClass.prototype.constructor = function () {
  //   subClass();
  //   superClass.call(subClass, color);
  // };
}

function Animal(color) {
  this.color = color;
}

Animal.prototype.makeNoise = function(noise) {
  console.log(`${noise}`);
}

function Dog(name) {
  this.name = name;
  // Animal.call(this, color)
}

let danimal = Dog.inherits(Animal);
let animal = new Animal();
let max = new Dog('max');
console.log(max)
max.makeNoise("bark");
// max.color = 'red';
console.log(max.color);