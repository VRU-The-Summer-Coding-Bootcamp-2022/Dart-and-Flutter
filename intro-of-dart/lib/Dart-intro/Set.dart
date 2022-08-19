main() {
  var lang = new Set();

  lang.add("Kotlin");
  lang.add("Java");
  lang.add("Python");
  lang.add("Dart");

  for (var item in lang) print(item);

  lang.add("Clipper");

  print("Has Dart? ${lang.contains('Clipper')}");
  print("Has Rust? ${lang.contains('Rust')}");

  var web = new Set.from(['Django', 'PHP', 'JavaScript', 'HTML']);

  print(lang.union(web));
  print("••••••••••••");
  print(lang.lookup("Kotlin")); // output → "Kotlin"
  print("••••••••••••");
  print(lang.lookup("Delphi")); // output → "null"
  print("••••••••••••");
  print(lang.difference(web));
}
