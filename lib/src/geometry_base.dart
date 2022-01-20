abstract class GeometryBase<T> {
  T solve();
}

class Point {
  Point(this.x, this.y);
  final double x, y;
}

class Line {
  Line(this.p1, this.p2);
  final Point p1, p2;

  double get k => (p2.y - p1.y) / (p2.x - p1.x);
}
