sumOfNPrimes = (num) => {
  result = 0
  i = 0;
  j=1;
  while (i < num){
      if (isPrime(j)){
        result += j
        i++;
      }
      j++;

  }
  console.log(result)
};

isPrime = (j) => {
  if (j == 1) return false;
  for (var i = 2; i < j/2+1; i++) {
    if ( j%i == 0 ) {
      return false;
    }
  }
  return true;
};

sumOfNPrimes(4)
