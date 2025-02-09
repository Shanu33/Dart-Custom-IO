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
  } else if (type== bool && (input == 'true' || input == '1')) {
    return true;
  } else if (type== bool && (input == 'false' || input == '0')) {
    return false; 
  } else if (type == String) {
    return input; 
  } else {
   print("Error : Input Mismatch !");
    return null;
  }

}}