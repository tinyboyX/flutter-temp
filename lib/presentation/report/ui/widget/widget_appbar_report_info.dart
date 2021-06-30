import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/presentation/account/ui/widget/widget_appbar_extend_info.dart';
import 'package:clean_architechture/presentation/account/ui/widget/widget_appbar_extend_info2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class WidgetAppbarInfoReportItem extends StatelessWidget {
  const WidgetAppbarInfoReportItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 110.0,
      left: 20.0,
      right: 20.0,
      child: Column(
        children: [
          Container(
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 3,
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.red,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Somchai Namsakul',
                          style: AppTextStyle.username,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.verified,
                                  color: AppColors.blue,
                                  size: 20,
                                ),
                              ),
                              TextSpan(
                                text: 'Verified',
                                style: TextStyle(color: AppColors.blue, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'SCM Business (ID:123248214)',
                      style: AppTextStyle.label7,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Joined: Datetime',
                          style: TextStyle(fontSize: 10, color: AppColors.grey),
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        Text(
                          'Expired: Datetime',
                          style: TextStyle(fontSize: 10, color: AppColors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const WidgetExtendInfo(),
                  const SizedBox(
                    width: 20,
                  ),
                  Center(
                    child: Expanded(
                      child: VerticalDivider(
                        width: 2,
                        color: AppColors.grey,
                      ),
                    ),
                  ),
                  const WidgetExtendInfo2(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
