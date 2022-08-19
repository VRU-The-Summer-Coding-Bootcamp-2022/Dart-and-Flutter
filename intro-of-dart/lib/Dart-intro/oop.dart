class Employee {
  Employee(
    this.name, {
    int? age,
    String? fname,
  }) : this.f_name = fname {
    print('In Constructor');
    print('${name}, ${age}, ${fname}');
  }

  // Employee('Cena', age: 22);
  late String name;
  final String? f_name;
  //getter method
  String get emp_name {
    return name;
  }

  //setter method
  void set emp_name(String name) {
    this.name = name;
  }

  //function definition
  void result() {
    print(name);
    print(f_name);
  }
}

void main() {
  //object creation
  Employee emp = Employee(
    'Cena',
    fname: 'Ashoori',
  );
  emp.result(); //function call
}
