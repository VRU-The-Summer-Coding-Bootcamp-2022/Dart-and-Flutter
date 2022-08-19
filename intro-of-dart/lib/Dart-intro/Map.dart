void main() {
  var status = new Map();
  status['online'] = false;
  status['offline'] = true;
  print("status → $status");

  // Also curly braces
  var shirtSizeStock = {'S': 10, 'M': 24, 'X': 31, 'XL': 7};
  print("Shirt sizes in stock → $shirtSizeStock");

  // keys and values can be iterated
  // HashMap iterates in arbitrary order, whereas LinkedHasMap and SplayTreeMap
  //  iterate in the order they were inserted into the map.
  for (var key in shirtSizeStock.keys) print(key);
  print("•••••");
  for (var value in shirtSizeStock.values) print(value);
}
