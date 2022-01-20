import 'package:geometry/geometry.dart';
import 'package:geometry/src/solutions.dart';
import 'package:test/test.dart';

void main() {
  test('ThreeDots Test', () {
    final treeDots = ThreeDots(
      line1: Line(Point(10, 100), Point(260, 400)),
      point1line2: Point(150, 30),
    );

    final solution = treeDots.solve();
    final roundedX = (solution.x * 100).round() / 100;
    final roundedY = (solution.y * 100).round() / 100;

    expect(roundedX, 32.95);
    expect(roundedY, 127.54);
  });
}
