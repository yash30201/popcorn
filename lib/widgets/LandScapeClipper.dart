import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    // path.quadraticBezierTo(
    //   size.width / 4,
    //   size.height,
    //   size.width / 2,
    //   size.height,
    // );
    // path.quadraticBezierTo(
    //   size.width - size.width / 4,
    //   size.height,
    //   size.width,
    //   size.height - 50,
    // );
    path.quadraticBezierTo(
      size.width / 5 * 2,
      size.height,
      size.width,
      size.height - 30,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

@immutable
class LandScapeClipper extends StatelessWidget {
  final Shadow shadow;
  final CustomClipper<Path> clipper;
  final Widget child;

  LandScapeClipper({
    @required this.shadow,
    @required this.clipper,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter:
          _LandScapeShadowPainter(clipper: this.clipper, shadow: this.shadow),
      child: ClipPath(child: this.child, clipper: this.clipper),
    );
  }
}

class _LandScapeShadowPainter extends CustomPainter {
  final Shadow shadow;
  final CustomClipper<Path> clipper;
  _LandScapeShadowPainter({
    this.shadow,
    this.clipper,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var paint = shadow.toPaint();
    var clipPath = clipper.getClip(size);
    canvas.drawPath(clipPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldPainter) => false;
}
