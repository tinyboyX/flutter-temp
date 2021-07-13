import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/presentation/personal_statistic/model/canvas_data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class WidgetPersonalStatisticPVProgressBar extends StatelessWidget {
  const WidgetPersonalStatisticPVProgressBar({Key? key, required this.value}) : super(key: key);
  final double value;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final canvasDataModel = CanvasDataModel(size: Size(constraints.maxWidth, constraints.maxHeight), value: value);
        return Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 10,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: CustomPaint(
            painter: PVProgressBar(canvasDataModel: canvasDataModel),
            child: Stack(
              children: [
                Positioned(
                  top: (constraints.maxHeight - 20) / 2 + 20,
                  left: ((constraints.maxWidth + 30) * 0.9 / 4 * 1),
                  child: Column(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: canvasDataModel.value >= CanvasDataModel.bronzeValue ? AppColors.orange : AppColors.lightOrange,
                          border: Border.all(
                            color: AppColors.orange,
                          ),
                        ),
                        child: Icon(
                          FontAwesomeIcons.medal,
                          color: canvasDataModel.value >= CanvasDataModel.bronzeValue ? AppColors.white : AppColors.orange,
                          size: 10,
                        ),
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Bronze',
                            style: AppTextStyle.textCanvasText,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            '10,000 PV',
                            style: AppTextStyle.textCanvasText,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: (constraints.maxHeight - 20) / 2 + 20,
                  left: ((constraints.maxWidth ) * 0.9 / 4 * 2),
                  child: Column(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: canvasDataModel.value >= CanvasDataModel.silverValue ? AppColors.orange : AppColors.lightOrange,
                          border: Border.all(
                            color: AppColors.orange,
                          ),
                        ),
                        child: Icon(
                          FontAwesomeIcons.medal,
                          color: canvasDataModel.value >= CanvasDataModel.silverValue ? AppColors.white : AppColors.orange,
                          size: 10,
                        ),
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Silver',
                            style: AppTextStyle.textCanvasText,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            '30,000 PV',
                            style: AppTextStyle.textCanvasText,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: (constraints.maxHeight - 20) / 2 + 20,
                  left: ((constraints.maxWidth + 30) * 0.8 / 4 * 3),
                  child: Column(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: canvasDataModel.value >= CanvasDataModel.goldValue ? AppColors.orange : AppColors.lightOrange,
                          border: Border.all(
                            color: AppColors.orange,
                          ),
                        ),
                        child: Icon(
                          FontAwesomeIcons.medal,
                          color: canvasDataModel.value >= CanvasDataModel.goldValue ? AppColors.white : AppColors.orange,
                          size: 10,
                        ),
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Gold',
                            style: AppTextStyle.textCanvasText,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            '60,000 PV',
                            style: AppTextStyle.textCanvasText,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: (constraints.maxHeight - 30) / 2 + 20,
                  left: ((constraints.maxWidth) * 0.85),
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: canvasDataModel.value == CanvasDataModel.maxValue ? AppColors.orange : AppColors.lightOrange,
                          border: Border.all(
                            color: AppColors.orange,
                          ),
                        ),
                        child: Icon(
                          FontAwesomeIcons.medal,
                          color: canvasDataModel.value == CanvasDataModel.maxValue ? AppColors.white : AppColors.orange,
                          size: 10,
                        ),
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '100,000 PV',
                            style: AppTextStyle.textCanvasText,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: (constraints.maxHeight - 50) / 2 + 20,
                  left: ((constraints.maxWidth) * 0.86),
                  child: Text(
                    'Platinum',
                    style: AppTextStyle.textCanvasText,
                  ),
                ),
                Positioned(
                  top: (constraints.maxHeight + 50) / 2 + 20,
                  left: ((constraints.maxWidth) * 0.1 - 10),
                  child: Text(
                    '0,00 PV',
                    style: AppTextStyle.textCanvasText,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: ((constraints.maxWidth) * 0.05 - 10),
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, top: 5),
                    height: 20,
                    child: Text(
                      'PV Progress',
                      style: AppTextStyle.label8,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: constraints.maxWidth * 0.45,
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, top: 5),
                    height: 20,
                    child: RichText(
                      text: TextSpan(
                        style: AppTextStyle.label9,
                        children: [
                          const TextSpan(text: 'You need '),
                          TextSpan(
                            text: value < CanvasDataModel.bronzeValue
                                ? '${NumberFormat.decimalPattern().format(CanvasDataModel.bronzeValue - value)}'
                                : value < CanvasDataModel.silverValue
                                    ? '${NumberFormat.decimalPattern().format(CanvasDataModel.silverValue - value)}'
                                    : value < CanvasDataModel.goldValue
                                        ? '${NumberFormat.decimalPattern().format(CanvasDataModel.goldValue - value)}'
                                        : '${NumberFormat.decimalPattern().format(CanvasDataModel.maxValue - value)}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.orange,
                              fontSize: 8,
                            ),
                          ),
                          const TextSpan(text: ' more PV to reach the next level.'),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: (constraints.maxHeight - 65) / 2,
                  left: value <= CanvasDataModel.bronzeValue
                      ? ((constraints.maxWidth * 0.1 - 20) + (constraints.maxWidth * 0.2 * value / CanvasDataModel.bronzeValue))
                      : value <= CanvasDataModel.silverValue
                          ? ((constraints.maxWidth * 0.1 - 20) + (constraints.maxWidth * 0.2)) +
                              (constraints.maxWidth * 0.2 * ((value - CanvasDataModel.bronzeValue) / (CanvasDataModel.silverValue - CanvasDataModel.bronzeValue)))
                          : value <= CanvasDataModel.goldValue
                              ? ((constraints.maxWidth * 0.1 - 20) + (constraints.maxWidth * 0.4)) +
                                  (constraints.maxWidth * 0.2 * ((value - CanvasDataModel.silverValue) / (CanvasDataModel.goldValue - CanvasDataModel.silverValue)))
                              : ((constraints.maxWidth * 0.1 - 18) + (constraints.maxWidth * 0.6)) +
                                  (constraints.maxWidth * 0.2 * ((value - CanvasDataModel.goldValue) / (CanvasDataModel.maxValue - CanvasDataModel.goldValue))),
                  child: Container(
                    width: 40,
                    height: 20,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: AppColors.orange),
                    child: Center(
                      child: Text(
                        NumberFormat.decimalPattern().format(value),
                        style: AppTextStyle.textCanvasContainValue,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: (constraints.maxHeight-26) / 2,
                  left: value <= CanvasDataModel.bronzeValue
                      ? ((constraints.maxWidth * 0.1 -5) + (constraints.maxWidth * 0.2 * value / CanvasDataModel.bronzeValue))
                      : value <= CanvasDataModel.silverValue
                      ? ((constraints.maxWidth * 0.1 - 5) + (constraints.maxWidth * 0.2)) +
                      (constraints.maxWidth * 0.2 * ((value - CanvasDataModel.bronzeValue) / (CanvasDataModel.silverValue - CanvasDataModel.bronzeValue)))
                      : value <= CanvasDataModel.goldValue
                      ? ((constraints.maxWidth * 0.1 - 5) + (constraints.maxWidth * 0.4)) +
                      (constraints.maxWidth * 0.2 * ((value - CanvasDataModel.silverValue) / (CanvasDataModel.goldValue - CanvasDataModel.silverValue)))
                      : ((constraints.maxWidth * 0.1 - 3) + (constraints.maxWidth * 0.6)) +
                      (constraints.maxWidth * 0.2 * ((value - CanvasDataModel.goldValue) / (CanvasDataModel.maxValue - CanvasDataModel.goldValue))),
                  child: CustomPaint(
                    painter: DrawTriangleShape(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class DrawTriangleShape extends CustomPainter {
  Paint painter = Paint()
    ..color = AppColors.orange
    ..style = PaintingStyle.fill;

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(5, 5);
    path.lineTo(10, 0);
    path.close();

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class PVProgressBar extends CustomPainter {
  final double progress = 0.7;
  Paint barPaintFull = Paint()..color = AppColors.orange;
  Paint barPaintEmpty = Paint()..color = AppColors.grey.shade300;

  var canvasDataModel;

  PVProgressBar({this.canvasDataModel});

  @override
  void paint(Canvas canvas, Size size) {
    final radiusCircle = 5.0;
    final horizontalAxis = size.width * 0.1;
    final verticalAxis = size.height / 2 + 20;
    canvas.drawRect(
      canvasDataModel.drawEmptyRect(),
      barPaintEmpty,
    );
    canvas.drawCircle(
      Offset(horizontalAxis, verticalAxis),
      radiusCircle,
      barPaintFull,
    );
    canvas.drawRect(
      canvasDataModel.drawUnRankRect(),
      barPaintFull,
    );
    canvas.drawRect(
      canvasDataModel.drawBronzeRect(),
      barPaintFull,
    );
    canvas.drawRect(
      canvasDataModel.drawSilverRect(),
      barPaintFull,
    );
    canvas.drawRect(
      canvasDataModel.drawGoldRect(),
      barPaintFull,
    );
    canvas.drawCircle(
      canvasDataModel.drawCheckPoint(),
      radiusCircle,
      barPaintFull,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
