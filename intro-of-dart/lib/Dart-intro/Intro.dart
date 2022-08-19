void main() {
  print("Dart is easy");

  print("••••••••••••••••••••••••");

  final a = 12;
  const pi = 3.14;
  print(a);
  print(pi);

  print("••••••••••••••••••••••••");

  var list = [1, 2, 3, 4, 5];
  print(list);

  print("••••••••••••••••••••••••");

  var mapping = {'id': 1, 'name': 'Dart'};
  print(mapping);

  print("••••••••••••••••••••••••");

  dynamic name =
      "Dart"; // keyword DYNAMIC is used when variable type is not defined
  print(name);

  print("••••••••••••••••••••••••");

  for (var i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  print("••••••••••••••••••••••••");

  add(3, 9);
}

void add(int a, int b) {
  int result;
  result = a + b;
  print(result);
}
