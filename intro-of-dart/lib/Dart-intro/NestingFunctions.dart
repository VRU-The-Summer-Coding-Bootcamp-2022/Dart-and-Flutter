void main() {
  bool isBanana(String fruit) {
    return fruit == 'banana';
  }

  var fruit = 'apple';
  print(isBanana(fruit));
}

void outter(String str) {
  void inner(String str) {
    print(str);
  }

  inner(str);
}
