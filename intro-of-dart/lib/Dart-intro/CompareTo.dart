import 'dart:io';

main() {
  stdout.writeln("Enter first number?");
  double firstNumber = stdin.readLineSync() as double;

  stdout.writeln("Enter second number:");
  double secondNumber = stdin.readLineSync() as double;

  if (firstNumber.compareTo(secondNumber) == 0) {
    print("They are equal");
  } else if (firstNumber.compareTo(secondNumber) < 0) {
    print("$firstNumber is smaller than $secondNumber");
  } else {
    print("$firstNumber is greater than $secondNumber");
  }
}
