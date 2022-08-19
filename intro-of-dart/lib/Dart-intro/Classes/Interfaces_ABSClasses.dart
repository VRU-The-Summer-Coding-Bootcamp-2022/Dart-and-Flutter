//* Dart has no 'interface' keyword..
// Instead all classes implicitly define an interface so you can implement
// any class.

import 'Spacecraft.dart';

class MockSpaceship implements Spacecraft {
  @override
  DateTime? launchDate;

  @override
  late String name;

  @override
  void describe() {
    // TODO: implement describe
  }

  @override
  // TODO: implement launchYear
  int? get launchYear => throw UnimplementedError();
}

abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print("••••••••••");
    describe();
    print("••••••••••");
  }
}

// You can create an abstract class to be extended (or implemented) by a 
  //concrete class. Abstract classes can contain abstract methods 
  //(with empty bodies).
