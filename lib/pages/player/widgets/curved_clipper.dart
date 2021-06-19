import 'package:flutter/material.dart';

class ClipCurvedPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var startPoint = Offset(0, size.height / 2);
    var controlPoint1 = Offset(size.width / 4, size.height);
    var controlPoint2 = Offset(3 * size.width / 4, size.height);
    var endPoint = Offset(size.width, size.height / 2);

    var path = Path();
    path.moveTo(startPoint.dx, startPoint.dy);
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
        controlPoint2.dy, endPoint.dx, endPoint.dy);
    
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
