import 'package:test/test.dart';
import 'package:terminal_sparkline/terminal_sparkline.dart';

void main() {
  test('terminal_sparkline', () {
    expect(terminalSparkline([10, 20, 30, 10, 50, 80, 10, 90]), '▁▂▃▁▅█▁█');
  });
}
