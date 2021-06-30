import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/presentation/common/widget/widget_notification_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrganizeWidgetAppBarAction extends StatelessWidget {
  const OrganizeWidgetAppBarAction({Key? key}) : super(key: key);

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
          Container(
            height: 40,
            width: 300,
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: const EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                const Expanded(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search member ID",
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      isDense: true,
                    ),
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                WidgetNotificationIcon(
                  notificationCount: null,
                  iconData: Icons.search,
                  onTap: () {},
                  color: AppColors.grey,
                ),
              ],
            ),
          ),
          WidgetNotificationIcon(
            notificationCount: 19,
            iconData: Icons.shopping_cart,
            onTap: () {},
          )
        ],
      ),
    );
  }
}
