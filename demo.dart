void main() {
  List<int> numbers = [12, 6, 4, 5, 5, 6];

  List<int> checks = [5, 6, 8, 9, 7];
  List<int> confirm = [];

  int counter = 0;
  for (int i in checks) {
    if (numbers.contains(i)) {
//      confirm.add(i);
      counter++;
    }
  }

  print('you have $counter matching number(s)');

  int start = 99;

  for (int i = start; i >= 0; i--) {
    String bottleValue;
    int value = i - 1;
    String bottler;

    if (i > 1) {
      bottleValue = '$i bottles';
      bottler = value.toString();
    } else if (i == 1) {
      bottleValue = '$i bottle';
      bottler = 'no more';
    } else {
      bottleValue = 'No more';
      bottler = start.toString();
    }

    print(
        '$bottleValue of beer on the wall, ${bottleValue.toLowerCase()} of beer\n Take one down and pass it around, $bottler bottles of beer on the wall.');
  }
}
