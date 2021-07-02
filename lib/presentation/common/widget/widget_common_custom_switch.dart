import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetCommonCustomSwitch extends StatefulWidget {
  final bool? value;
  final ValueChanged<bool>? onChanged;
  final Color? activeColor;

  const WidgetCommonCustomSwitch({Key? key, this.value, this.onChanged, this.activeColor}) : super(key: key);

  @override
  _WidgetCommonCustomSwitchState createState() => _WidgetCommonCustomSwitchState();
}

class _WidgetCommonCustomSwitchState extends State<WidgetCommonCustomSwitch> with SingleTickerProviderStateMixin {
  late Animation _circleAnimation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 60));
    _circleAnimation =
        AlignmentTween(begin: widget.value! ? Alignment.centerRight : Alignment.centerLeft, end: widget.value! ? Alignment.centerLeft : Alignment.centerRight)
            .animate(CurvedAnimation(parent: _animationController, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            widget.value == false ? widget.onChanged!(true) : widget.onChanged!(false);
          },
          child: Container(
            width: 70.0,
            height: 35.0,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: _circleAnimation.value == Alignment.centerLeft ? Colors.grey : widget.activeColor),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _circleAnimation.value == Alignment.centerRight
                      ? const Padding(
                          padding: EdgeInsets.only(left: 21.0, right: 4.0),
                        )
                      : Container(),
                  Align(
                    alignment: _circleAnimation.value,
                    child: Container(
                      width: 25.0,
                      height: 25.0,
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                  _circleAnimation.value == Alignment.centerLeft
                      ? const Padding(
                          padding: EdgeInsets.only(left: 4.0, right: 21.0),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
