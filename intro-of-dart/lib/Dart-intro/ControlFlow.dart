void main() {
  var year = 1997;
  final languages = ['Kotlin', 'Java', 'Python', 'Dart'];
  if (year >= 2001) {
    print('21st century');
  } else {
    print('20th century');
  }

  for (final item in languages) {
    print(item);
  }

  while (year < 2022) {
    print(year);
    year += 1;
  }
}
