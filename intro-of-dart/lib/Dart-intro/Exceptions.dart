class FoodSpoiledError extends StateError {
  FoodSpoiledError(String msg) : super(msg);
}

class Banana {
  int age;

  Banana(this.age);

  String peel() {
    if (age > 4) {
      throw new FoodSpoiledError("This potato has gone bad");
    }

    return "peeled";
  }
}

main() {
  var b = new Banana(5);

  try {
    b.peel();
  } on FoodSpoiledError catch (_) {
    print("You do not wanna eat that");
  }

  // any non-null object can be thrown
  try {
    throw ("banana");
  } catch (_) {
    print("Caught a flying banana");
  }

  // exceptions halt execution
  b.peel();
  print("not reached");
}
