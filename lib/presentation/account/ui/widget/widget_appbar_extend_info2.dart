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
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 30,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: AppColors.lightOrange,
            ),
            child: const Center(
              child: Text('SCMP', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.orange)),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            "3,900",
            style: AppTextStyle.label5,
          ),
          SizedBox(
            width: 16,
            child: Stack(
              children: [
                const Positioned(
                  top: 0,
                  right: 0,
                  child: Text(
                    'Points',
                    style: TextStyle(fontSize: 5),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:  AppColors.lightOrange ,
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
