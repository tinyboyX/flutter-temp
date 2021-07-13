import 'package:clean_architechture/config/colors.dart';
import 'package:flutter/material.dart';

class WidgetNotificationIcon extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onTap;
  final int? notificationCount;
  final Color? color;
  final Color? backgroundColor;
  final double? size;

  const WidgetNotificationIcon({
    Key? key,
    required this.onTap,
    required this.iconData,
    this.notificationCount,
    this.color,
    this.size,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (notificationCount == null) {
      return InkWell(
        onTap: onTap,
        child: Container(
          width: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
          ),
          child: Icon(
            iconData,
            color: color ?? AppColors.white,
            size: size ?? 30,
          ),
        ),
      );
    }
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 30,
        child: Stack(
          children: [
            Icon(
              iconData,
              color: AppColors.white,
              size: 30,
            ),
            Positioned(
              height: 15,
              width: 15,
              top: 0,
              right: 0,
              child: Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.red),
                child: Center(
                    child: Text(
                  '$notificationCount',
                  style: const TextStyle(
                    fontSize: 10,
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
