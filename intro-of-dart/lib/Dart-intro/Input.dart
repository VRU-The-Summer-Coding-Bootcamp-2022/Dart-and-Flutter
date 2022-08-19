import 'dart:io';

void main() {
  print("Enter a message→");
  String msg = stdin.readLineSync()!;
  print("Message → $msg");
}
