import 'dart:math' as math;

class Responsive {
  final double width, height;
  late double inch;
  Responsive(this.width, this.height) {
    inch = math.sqrt((width * width) + (height * height));
  }
  double iconSize(bool fullscreen) {
    return ip(fullscreen ? 7 : 9);
  }

  double ip(double percent) {
    return inch * percent / 100;
  }

  double wp(double percent) {
    return width * percent / 100;
  }

  double hp(double percent) {
    return height * percent / 100;
  }
}
