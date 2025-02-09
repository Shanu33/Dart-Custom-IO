import 'package:custom_io/custom_io.dart';

void main() {
  print("Enter an integer:");
  int? intValue = CustIO.myInput(int);
  print("You entered integer: $intValue");

  print("\nEnter a double:");
  double? doubleValue = CustIO.myInput(double);
  print("You entered double: $doubleValue");

  print("\nEnter a boolean (true/false or 1/0):");
  bool? boolValue = CustIO.myInput(bool);
  print("You entered boolean: $boolValue");

  print("\nEnter a string:");
  String? stringValue = CustIO.myInput(String);
  print("You entered string: $stringValue");
}
