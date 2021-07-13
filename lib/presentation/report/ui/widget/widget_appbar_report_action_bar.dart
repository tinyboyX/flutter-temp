import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/widget/widget_notification_icon.dart';

class WidgetAppBarReportAction extends StatelessWidget {
  const WidgetAppBarReportAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 147,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
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
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 338.w,
          padding: const EdgeInsets.only(top: 46),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  WidgetNotificationIcon(
                    iconData: Icons.arrow_back,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  WidgetNotificationIcon(
                    iconData: Icons.notifications,
                    notificationCount: 9,
                    onTap: () {},
                  ),
                ],
              ),
              Container(
                child: Text(
                  "SCM Connect",
                  style: AppTextStyle.label5,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WidgetNotificationIcon(
                    notificationCount: null,
                    iconData: Icons.search,
                    onTap: () {},
                  ),
                  WidgetNotificationIcon(
                    iconData: Icons.favorite_border,
                    onTap: () {},
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
        ),
      ),
    );
  }
}
