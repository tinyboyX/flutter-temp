import 'package:clean_architechture/config/colors.dart';
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
            color: AppColors.orangeAccent.withOpacity(0.5),
            spreadRadius: 10,
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
              WidgetNotificationIcon(
                iconData: Icons.arrow_back,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Container(
                child: Text(
                  "SCM Connect",
                  style: AppTextStyle.label5,
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WidgetNotificationIcon(
                      notificationCount: null,
                      iconData: Icons.search,
                      onTap: () {},
                    ),
                    WidgetNotificationIcon(
                      notificationCount: 19,
                      iconData: Icons.shopping_cart,
                      onTap: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
