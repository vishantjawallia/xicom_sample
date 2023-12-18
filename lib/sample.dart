

void main(List<String> args) {
  var arry1 = [1, 2, 3, 4, 5, 6];
  var arry2 = [3, 5, 7, 9, 2];

  for (var i = 0; i < arry1.length; i++) {
    if (arry1.length <= arry2.length) {
      if (arry1[i] == arry2[i]) {
        print("value" + arry1[i].toString());
      }
    }
  }
}
