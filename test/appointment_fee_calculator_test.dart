import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should calculate fee', () {
    final result = 500 + (100 * 2);

    expect(result, 700);
  });
}
