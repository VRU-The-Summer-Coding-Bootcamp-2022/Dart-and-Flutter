class Spacecraft {
  late String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugar for assignment to members
  Spacecraft(this.name, this.launchDate) {
    // Code
  }

  // Named constructor which forwards to default
  Spacecraft.unlaunched(String name) : this(name, null);

  // Method
  void describe() {
    print('Spacecraft: $name');

    // Type promotion does not work on getters
    var launchDate = this.launchDate;

    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Not launched');
    }
  }
}

void main() {
  Spacecraft voyager = new Spacecraft('Voyager', DateTime(1977, 9, 5));
  voyager.describe();

  print("••••••••••••••••••••••••");

  var voyager2 = Spacecraft('Voyager II', DateTime(1977, 8, 20));
  voyager2.describe();

  print("••••••••••••••••••••••••");

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
}
