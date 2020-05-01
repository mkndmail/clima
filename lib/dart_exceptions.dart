void main() {
  String a = '15';
  double aAsDouble = double.parse(a);
  print(aAsDouble + 10);

  String b = "Mukund";
  try {
    double c = double.parse(b);
  } catch (e) {
    print(e);
  }
}
