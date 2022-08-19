void main() {
  outerloop: // label name

  for (var i = 0; i < 5; i++) {
    print("Innerloop → $i");

    innerloop: // label name
    for (var j = 0; j < 5; j++) {
      if (j > 3) break;

      // Quit innermost loop
      if (i == 2) break innerloop;

      // Just the same
      if (i == 4) break outerloop;

      // Quit outer loop
      print("Innerloop → $j");
    }
  }
}
