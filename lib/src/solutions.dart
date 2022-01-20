import 'dart:math';

import 'geometry_base.dart';

class ThreeDots implements GeometryBase<Point> {
  ThreeDots({
    required this.line1,
    required this.point1line2,
  });
  final Line line1;
  final Point point1line2;

  @override
  Point solve() {
    final k1 = line1.k;
    final k2 = tan(atan(k1) + pi / 2);
    final x =
        (k2 * point1line2.x - k1 * line1.p2.x + line1.p2.y - point1line2.y) /
            (k2 - k1);

    final y = k2 * (x - point1line2.x) + point1line2.y;

    return Point(x, y);
  }
}
