import 'dart:collection';

main() {
  // Queues are best for adding elements to head or tail
  var q = new Queue.from([100, 200, 300, 400, 500]);

  // iteerating
  print(q.takeWhile((i) => i < 400));

  while (q.first < 200) {
    q.removeFirst();
  }

  print(q);
}
