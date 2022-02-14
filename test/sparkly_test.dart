import 'package:test/test.dart';
import 'package:sparkly/sparkly.dart';

void main() {
  test('sparkly', () {
    expect(sparkly([10, 20, 30, 10, 50, 80, 10, 90]), '▁▂▃▁▅█▁█');
  });
}
