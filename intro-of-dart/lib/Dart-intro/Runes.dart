//*  A RUNE is an integer representing a Unicode code point.

import 'dart:core';

void main() {
  f1();

  print("••••••••••••••••");

  "A string".runes.forEach((int rune) {
    var char = new String.fromCharCode(rune);
    print(char);
  });

  print("••••••••••••••••");

  Runes input = new Runes(' \u{1f605} ');
  print(new String.fromCharCodes(input));
}

f1() {
  String str = "Runes";
  print(str.codeUnitAt(0));
  print(str.codeUnits);
}
