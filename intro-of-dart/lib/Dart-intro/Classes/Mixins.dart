// Mixins are a way of reusing code in multiple class hierarchies

import 'Spacecraft.dart';

mixin Piloted {
  int astronauts = 1;

  void describeCrew() {
    print("Number of astronauts → $astronauts");
  }
}

// to add mixin's capabilities to a class, just extend the with the mixin

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(super.name, super.launchDate);
  // code
}
