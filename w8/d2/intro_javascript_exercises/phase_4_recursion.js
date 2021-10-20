function range(start, end) {
  if (start === end) {
    return [start];
  }
  return range(start, end - 1).concat([end]);
}

function sumRec(arr) {
  if (arr.length === 0) {
    return 0;
  }
  return arr.pop() + sumRec(arr);
}

function exp1(b, n) {
  if (n === 0) {
    return 1;
  }
  if (n > 0) {
    return b * exp1(b, n - 1);
  } else if (n < 0) {
    return exp1(b, n + 1) / b;
  }
}

function exp2(b, n){
  if (n === 0) {
    return 1;
  }
  if (n%2===0) {
    return exp2(b, n/2)**2;
  } else {
    return b*(exp2(b, (n-1)/2)**2);
  }
}

function fibonacci(n) {
  if (n<3) {
    return [0,1];
  }
  let fibs = fibonacci(n-1);
  fibs.push(fibs[fibs.length-1]+fibs[fibs.length-2]);
  return fibs;
}

function deepDup(array) {
  if (!array instanceof Array) {
    return array;
  }
  return array.map((el) => 
    deepDup(el)
  );
}