import 'package:clean_architechture/config/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.onPressed, this.text});

  final GestureTapCallback onPressed;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(30),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
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
            style: AppTextStyle.buttonLabel,
          ),
        ),
      ),
    );
  }
}
