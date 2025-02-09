import 'package:custom_io/custom_io.dart';
import 'package:test/test.dart';
import 'dart:io';

void main() {
  group('CustIO Input Tests', () {
    test('Integer Input Test', () {
      stdin = FakeStdin("42\n"); // Simulate user input
      expect(CustIO.myInput(int), equals(42));
    });

    test('Double Input Test', () {
      stdin = FakeStdin("3.14\n");
      expect(CustIO.myInput(double), equals(3.14));
    });

    test('Boolean Input Test (true)', () {
      stdin = FakeStdin("true\n");
      expect(CustIO.myInput(bool), isTrue);
    });

    test('Boolean Input Test (false)', () {
      stdin = FakeStdin("false\n");
      expect(CustIO.myInput(bool), isFalse);
    });

    test('String Input Test', () {
      stdin = FakeStdin("Hello Dart\n");
      expect(CustIO.myInput(String), equals("Hello Dart"));
    });

    test('Invalid Input Test (Mismatch)', () {
      stdin = FakeStdin("Invalid\n");
      expect(CustIO.myInput(int), isNull); // Should return null for incorrect type
    });
  });
}

// FakeStdin class to simulate user input in tests
class FakeStdin extends Stream<String> implements Stdin {
  final String _input;
  FakeStdin(this._input);

  @override
  String readLineSync() => _input.trim();

  @override
  Stream<String> asBroadcastStream({void Function(StreamSubscription<String>)? onListen, void Function()? onCancel}) {
    throw UnimplementedError();
  }
}
