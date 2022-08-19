import 'Spacecraft.dart';

class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);

  @override
  void describe() {
    // TODO: implement describe
  }
}

void main(List<String> args) {}
