import 'dart:io';

/// A utility class for handling different types of user input.
class CustIO {
  CustIO._(); // Private constructor to prevent instantiation.

  /// Reads input from the user and converts it to the specified [type].
  static dynamic myInput(Type type) {
    String? input = stdin.readLineSync();
    if (input == null) {
      return null; // No input provided
    }

    if (type == int) {
      return int.tryParse(input);
    } else if (type == double) {
      return double.tryParse(input);
    } else if (type == bool) {
      if (input.toLowerCase() == 'true' || input == '1') return true;
      if (input.toLowerCase() == 'false' || input == '0') return false;
    } else if (type == String) {
      return input;
    }

    print("Error: Input Mismatch!");
    return null;
  }
}

/// Checks if you are awesome. Spoiler: you are.
class Awesome {
  bool get isAwesome => true;
}
