void main() {
  int fibonnacci(int n) {
    if (n == 0 || n == 1) return n;
    return fibonnacci(n - 1) + fibonnacci(n - 2);
  }

  // ignore: unused_local_variable
  var result = fibonnacci(20);
}
