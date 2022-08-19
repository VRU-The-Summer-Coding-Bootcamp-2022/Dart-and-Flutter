import 'dart:io';

import 'Classes/Spacecraft.dart';

const oneSecond = Duration(seconds: 1);

Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

//?  ↑ Correspondingly ↓

Future<void> printWithDelay2(String message) {
  return Future.delayed(oneSecond).then((_) {
    print(message);
  });
}

// async and await help make asynchronous code easy to read ↓

Future<void> createDescriptions(Iterable<String> objects) async {
  for (final object in objects) {
    try {
      var file = File('$object.txt');

      if (await file.exists()) {
        var modified = await file.lastModified();

        print('File for $object already exists. Modified last → $modified');

        continue;
      }

      await file.create();
      await file.writeAsString("Describe $object in this file.");
    } on IOException catch (e) {
      print("Cannot create description for $object → $e");
    }
  }
}

// async gives you a readable way to build streams ↓

Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
  for (final object in objects) {
    await Future.delayed(oneSecond);
    yield '${craft.name} flies by $object';
  }
}
