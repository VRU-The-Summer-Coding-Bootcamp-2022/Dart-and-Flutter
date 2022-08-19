import 'dart:math';

main() {
  var random = new Random();

  print("Random boolean → ${random.nextBool()}"); // true or false
  print("Random integer → ${random.nextInt(100)}"); // 0 - 100 range
  print("Random double → ${random.nextDouble()}"); // 0.0 - 1.0
}
