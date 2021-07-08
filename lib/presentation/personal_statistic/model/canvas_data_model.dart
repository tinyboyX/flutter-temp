import 'dart:ui';

class CanvasDataModel {
  CanvasDataModel({required this.value, required this.size});

  static const maxValue = 100000;
  static const bronzeValue = 10000;
  static const silverValue = 30000;
  static const goldValue = 60000;
  final double value;
  final Size size;
  final barHeight = 5.0;
  final radiusCircle1 = 5.0;

  Rect drawEmptyRect() {
    return Rect.fromLTWH(
      size.width * 0.1,
      (size.height - barHeight) / 2 + 20,
      (size.width * 0.8),
      barHeight,
    );
  }

  Rect drawUnRankRect() {
    return value >= bronzeValue
        ? Rect.fromLTWH(
            size.width * 0.1,
            (size.height - barHeight) / 2 + 20,
            (size.width * 0.8) / 4,
            barHeight,
          )
        : Rect.fromLTWH(
            size.width * 0.1,
            (size.height - barHeight) / 2 + 20,
            (size.width * 0.8) / 4 * value / bronzeValue,
            barHeight,
          );
  }

  Rect drawBronzeRect() {
    return value >= silverValue
        ? Rect.fromLTWH(
            (size.width * 0.1) + (size.width * 0.8) / 4,
            (size.height - barHeight) / 2 + 20,
            (size.width * 0.8) / 4,
            barHeight,
          )
        : value >= bronzeValue
            ? Rect.fromLTWH(
                (size.width * 0.1) + (size.width * 0.8) / 4,
                (size.height - barHeight) / 2 + 20,
                ((size.width * 0.8) / 4) * (value - bronzeValue) / (silverValue - bronzeValue),
                barHeight,
              )
            : Rect.zero;
  }

  Rect drawSilverRect() {
    return value >= goldValue
        ? Rect.fromLTWH(
            (size.width * 0.1) + (size.width * 0.8) / 4 * 2,
            (size.height - barHeight) / 2 + 20,
            (size.width * 0.8) / 4,
            barHeight,
          )
        : value >= silverValue
            ? Rect.fromLTWH(
                (size.width * 0.1) + (size.width * 0.8) / 4 * 2,
                (size.height - barHeight) / 2 + 20,
                ((size.width * 0.8) / 4) * (value - silverValue) / (goldValue - silverValue),
                barHeight,
              )
            : Rect.zero;
  }

  Rect drawGoldRect() {
    return value >= maxValue
        ? Rect.fromLTWH(
            (size.width * 0.1) + (size.width * 0.8) / 4 * 3,
            (size.height - barHeight) / 2 + 20,
            (size.width * 0.8) / 4,
            barHeight,
          )
        : value >= CanvasDataModel.goldValue
            ? Rect.fromLTWH(
                (size.width * 0.1) + (size.width * 0.8) / 4 * 3,
                (size.height - barHeight) / 2 + 20,
                ((size.width * 0.8) / 4) * (value - goldValue) / (maxValue - goldValue),
                barHeight,
              )
            : Rect.zero;
  }

  Offset drawCheckPoint() {
    if (value <= bronzeValue) {
      return Offset(
        (size.width * 0.1) + (size.width * 0.8) / 4 * value / bronzeValue,
        (size.height) / 2 + 20,
      );
    } else if (value <= silverValue) {
      return Offset(
        ((size.width * 0.1) + ((size.width * 0.8) / 4)) + ((size.width * 0.8) / 4 * (value - bronzeValue) / (silverValue - bronzeValue)),
        (size.height) / 2 + 20,
      );
    } else if (value <= goldValue) {
      return Offset(
        ((size.width * 0.1) + ((size.width * 0.8) / 4 * 2)) + ((size.width * 0.8) / 4 * (value - silverValue) / (goldValue - silverValue)),
        (size.height) / 2 + 20,
      );
    }
    return Offset(
      ((size.width * 0.1) + ((size.width * 0.8) / 4 * 3)) + ((size.width * 0.8) / 4 * (value - goldValue) / (maxValue - goldValue)),
      (size.height) / 2 + 20,
    );
  }


}
