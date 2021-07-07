import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/presentation/common/widget/widget_notification_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetExtendInfo2 extends StatelessWidget {
  const WidgetExtendInfo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      color: AppColors.white,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: AppColors.lightOrange,
            ),
            child: const Center(
              child: Text('SCMP', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.orange)),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "3,900",
            style: AppTextStyle.label6,
          ),
          const SizedBox(width: 5),
          SizedBox(
            width: 20,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                const Positioned(
                  top: 8,
                  right: 0,
                  child: Text(
                    'Points',
                    style: TextStyle(fontSize: 7),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            height: 30,
            width: 30,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.lightOrange,
            ),
            child: Center(
              child: WidgetNotificationIcon(
                iconData: Icons.arrow_forward_ios,
                onTap: () {},
                color: AppColors.orange,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
