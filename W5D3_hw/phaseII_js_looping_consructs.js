function fizzBuzz(array) {
  var fizzBuzzArray= [];

  array.forEach(function(num) {
    if ((num % 3 === 0) ^ (num % 5 === 0)) {
      fizzBuzzArray.push(num);
    }
  });
  return fizzBuzzArray;
}

function isPrime(num) {
  for (let i = 2; i < num; i++) {
    if (num % i === 0) {
      return false;
    }
  };
  return true;
}

function sumOfNPrimes(n) {
  let sum = 0;
  let countOfPrimes = 0;
  let i = 2;

  while (countOfPrimes < n) {
    if (isPrime(i)) {
      sum += i;
      countOfPrimes += 1;
    }
    i++;
  }
  return sum;
}
