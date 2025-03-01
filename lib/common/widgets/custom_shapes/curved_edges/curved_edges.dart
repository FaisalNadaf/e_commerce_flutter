import 'package:flutter/material.dart';

class TCustomCurverEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);

    final firstCurved = Offset(0, size.height - 20);
    final lastCurved = Offset(30, size.height - 20);

    path.quadraticBezierTo(
        firstCurved.dx, firstCurved.dy, lastCurved.dx, lastCurved.dy);

    final secondFirsCurved = Offset(0, size.height - 20);
    final secondLastCurved = Offset(size.width - 30, size.height - 20);

    path.quadraticBezierTo(secondFirsCurved.dx, secondFirsCurved.dy,
        secondLastCurved.dx, secondLastCurved.dy);

    final thirdFirsCurved = Offset(size.width, size.height - 20);
    final thirdLastCurved = Offset(size.width, size.height);

    path.quadraticBezierTo(thirdFirsCurved.dx, thirdFirsCurved.dy,
        thirdLastCurved.dx, thirdLastCurved.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TCustomCurverEdges oldClipper) => false;
}
