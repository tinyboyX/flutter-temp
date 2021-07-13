import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.onPressed,
    this.text,
    required this.bgColor,
    required this.appTextStyle,
  });

  final GestureTapCallback onPressed;
  final String? text;
  final Color bgColor;
  final TextStyle appTextStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 50,
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
