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
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: AppColors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      const Expanded(
                        child: TextField(
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search member ID',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                            ),
                            alignLabelWithHint: true,
                          ),
                        ),
                      ),
                      WidgetNotificationIcon(
                        notificationCount: null,
                        size: 24,
                        iconData: Icons.search,
                        color: AppColors.grey,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: WidgetNotificationIcon(
                  notificationCount: 19,
                  iconData: Icons.shopping_cart,
                  onTap: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
