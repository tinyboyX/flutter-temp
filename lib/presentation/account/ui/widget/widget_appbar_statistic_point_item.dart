import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/presentation/common/widget/widget_notification_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetAppbarStatisticPointItem extends StatelessWidget {
  const WidgetAppbarStatisticPointItem(
      {Key? key, required this.value, required this.unit, required this.isSCMP})
      : super(key: key);
  final double value;
  final String unit;
  final bool isSCMP;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          isSCMP
              ? Container(
                  height: 20,
                  width: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: AppColors.lightOrange,
                  ),
                  child: Center(
                    child: Container(
                      child: const Text('SCMP',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: AppColors.orange)),
                    ),
                  ),
                )
              : Container(
                  height: 25,
                  width: 25,
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
          const SizedBox(
            width: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Text(
                  value.toString(),
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 2),
                child: Text(
                  unit.toString(),
                  style: AppTextStyle.text9,
                ),
              )
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          isSCMP
              ? Container(
                  height: 25,
                  width: 25,
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
                )
              : const SizedBox(
                  height: 25,
                  width: 25,
                ),
        ],
      ),
    );
  }
}
