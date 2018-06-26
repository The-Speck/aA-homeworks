
function fizzBuzz(array) {
  let newArray = []
  array.forEach(function(ele) {
    if (ele % 3 === 0 && ele % 5 === 0) {
    } else if ( ele % 3 === 0 || ele % 5 === 0 ) {
      newArray.push(ele)
    }
  })
  return newArray
}

function isPrime(num) {
  if (num === 2){
    return true
  } else if (num < 2) {
    return false
  }

  for(let i = 2; i < num; i++) {
    if( num % i === 0 ) {
      return false
    }
  }

  return true
}

function sumOfNPrimes(num) {
  let sum = 0
  let iter = 1
  let count = 0

  while (count < num) {
    if (isPrime(iter)) {
      sum += iter
      count++
    }
    iter++
  }

  return sum
}

// function titleize(array, callback) {
//   let titledNames = array.map(el => `Mrs. ${el} Jinleheimer Schmidt`);
//   callback(titledNames);
// }
//
// titleize(['jack', 'jane', 'joe'], (names) => {
//   names.forEach(el => console.log(el));
// });

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log("Hello")
  console.log(`${this.name} the elephant goes 'phrrrrrr!!!!'`);
}
Elephant.prototype.grow = function() {
  this.height += 12;
}
Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
}
Elephant.prototype.play = function() {
  trick = this.tricks[Math.floor(Math.random() * this.tricks.length)];
  console.log(`${this.name} is ${trick}`)
}

var el = new Elephant('dumbo', 20, ['jump']);

el.trumpet();
// el.grow
// console.log(el.height)
// el.addTrick('rollwover')
// console.log(el.tricks)
// el.play
