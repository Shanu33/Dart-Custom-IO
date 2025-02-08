import 'dart:io';


class CustIO{

CustIO._();

static dynamic myInput(Type type) {
  String? input = stdin.readLineSync(); 
  if (input == null) {
    //print("No input provided.");
    return null; 
  }

  if (type == int) {
    return int.tryParse(input);
  } else if (type == double) {
    return double.tryParse(input);
  } else if (type == bool) {
    return input.toLowerCase() == 'true'; 
  } else if (type == String) {
    return input; 
  } else {
   // print("Unsupported type");
    return null;
  }

}}