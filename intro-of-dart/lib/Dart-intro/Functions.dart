// simple function
String yell(str) => str.toUpperCase();

yell_2(str) {
  return str.toUpperCase();
}

// functions can have Type annotations
List lines(String str) {
  return str.split('\n');
}

main() {
  const poem = '''
  The wren
  Earns his living
  Noiselessly.''';

  var poemLines = lines(poem);
  print(yell(poemLines.first));

  var whisper = (String str) => str.toLowerCase();
  print(whisper(poemLines.last));
}
