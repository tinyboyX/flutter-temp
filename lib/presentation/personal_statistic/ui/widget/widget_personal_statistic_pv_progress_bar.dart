import 'package:clean_architechture/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetPersonalStatisticPVProgressBar extends StatelessWidget {
  const WidgetPersonalStatisticPVProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size(371.4, 104.4)
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: CustomPaint(
        painter: MyPainter(),
        child: Stack(
          children: [
            Positioned(
              top: (104.4 - 20) / 2,
              left: (371.4 * 0.9 / 5 * 1),
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    color: AppColors.orange,
                  ),
                ),
              ),
            ),
            Positioned(
              top: (104.4 - 20) / 2,
              left: (371.4 * 0.9 / 5 * 2),
              child: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
            ),
            Positioned(
              top: (104.4 - 20) / 2,
              left: (371.4 * 0.9 / 5 * 3),
              child: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
            ),
            Positioned(
              top: (104.4 - 20) / 2,
              left: (371.4 * 0.9 / 5 * 4),
              child: Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
            ),
            Positioned(
              top: (104.4 - 30) / 2,
              left: (371.4 * 0.9),
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  final double progress = 0.7;
  Paint barPaintFull = Paint()..color = AppColors.orange;
  Paint barPaintEmpty = Paint()..color = AppColors.grey.shade300;

  @override
  void paint(Canvas canvas, Size size) {
    print(size);
    final barHeight = 5.0;
    final barWidth = size.width * 0.9;
    final radiusCircle1 = 5.0;

    canvas.drawRect(
      Rect.fromLTWH(
        size.width * 0.05,
        (size.height - barHeight) / 2,
        barWidth,
        barHeight,
      ),
      barPaintFull,
    );
    canvas.drawRect(
        Rect.fromLTWH(
          size.width * 0.05 + (size.width * 0.9 * progress),
          (size.height - barHeight) / 2,
          (barWidth * (1 - progress)),
          barHeight,
        ),
        barPaintEmpty);
    print(size.width * 0.05);
    canvas.drawCircle(
      Offset(size.width * 0.05, size.height / 2),
      radiusCircle1,
      barPaintFull,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
