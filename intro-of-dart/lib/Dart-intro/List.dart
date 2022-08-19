void main() {
  // Specifying the length creates a fixed-length list
  // ignore: deprecated_member_use
  var list = [];
  list.length = 3;
  list[0] = 2;
  list[1] = 41;
  list[2] = 86;
  print(list);

  var growable = [];
  growable.addAll(['grow', 'able']);
  print(growable);

  var list2 = ['also', 'growable'];
  list2.add('42');
  print(list2);

  var list3 = [87, 33, 61];

  try {
    for (var item in list3) {
      if (item <= 50) {
        list3.remove(item);
      }
    }
  } catch (e) {
    print("Something went wrong.");
  }
  print(list3);
}
