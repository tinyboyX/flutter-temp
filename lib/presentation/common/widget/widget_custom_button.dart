import 'package:clean_architechture/config/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.onPressed, this.text});

  final GestureTapCallback onPressed;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.orange,
      splashColor: Colors.orangeAccent,
      onPressed: onPressed,
      shape: const StadiumBorder(),
      child: Padding(
        padding: EdgeInsets.all(Constant.defaultPadding),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(
              width: 10.0,
            ),
            Text(
              text ?? '',
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
