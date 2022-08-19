void main() {
  checkForPrime(45);
  checkForPrime(11);
  checkForPrime(56);
}

void checkForPrime(int num) {
  int i, m = 0, flag = 0;

  m = num ~/ 2;

  for (i = 2; i <= m; i++) {
    if (num % i == 0) {
      print("$num is not a prime number");
      flag = 1;
      break;
    }
  }
  if (flag == 0) print('$num is a prime number');
}
