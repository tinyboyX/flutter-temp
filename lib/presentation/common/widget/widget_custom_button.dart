import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.onPressed,
    this.text,
    required this.bgColor,
    required this.appTextStyle,
    this.paddingTop,
    this.paddingBot,
    this.paddingLeft,
    this.paddingRight,
  });

  final GestureTapCallback onPressed;
  final String? text;
  final Color bgColor;
  final double? paddingTop;
  final double? paddingBot;
  final double? paddingLeft;
  final double? paddingRight;
  final TextStyle appTextStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.only(
        top: paddingTop ?? 0,
        bottom: paddingBot ?? 0,
        left: paddingLeft ?? 0,
        right: paddingRight ?? 0,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(bgColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: const BorderSide(color: Colors.orange),
            ),
          ),
        ),
        onPressed: () => onPressed,
        child: Center(
          child: Text(
            text ?? '',
            style: appTextStyle,
          ),
        ),
      ),
    );
  }
}
