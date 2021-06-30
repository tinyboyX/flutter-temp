import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/navigation_util.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/widget/widget_notification_icon.dart';

class WidgetAppBarAction extends StatelessWidget {
  const WidgetAppBarAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.orangeAccent,
            AppColors.orange,
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(ScreenUtil().screenWidth / 2, 40),
          bottomRight: Radius.elliptical(ScreenUtil().screenWidth / 2, 40),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.orangeAccent.withOpacity(0.5),
            spreadRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          WidgetNotificationIcon(
            iconData: Icons.arrow_back,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            child: Text(
              "SCM Connect",
              style: AppTextStyle.label5,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              WidgetNotificationIcon(
                notificationCount: null,
                iconData: Icons.search,
                onTap: () {},
              ),
              const SizedBox(
                width: 10,
              ),
              WidgetNotificationIcon(
                notificationCount: 19,
                iconData: Icons.shopping_cart,
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
