import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/data/main/model/user_model.dart';
import 'package:clean_architechture/presentation/report/ui/widget/widget_appbar_extend_info.dart';
import 'package:clean_architechture/presentation/report/ui/widget/widget_appbar_extend_info2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class WidgetAppbarInfoReportItem extends StatelessWidget {
  const WidgetAppbarInfoReportItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = getTempUser();
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
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    color: AppColors.white,
                    child: Text(user.avatar!),
                  ),
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
                          user.fullName!,
                          style: AppTextStyle.username,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: user.isVerify!
                              ? RichText(
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
                                )
                              : null,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'SCM Business (ID: ${user.scmBusinessID})',
                      style: AppTextStyle.text7,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Joined: ${DateFormat('dd-MM-yyyy').format(
                            user.joinDate!,
                          )}',
                          style: TextStyle(fontSize: 10, color: AppColors.grey),
                        ),
                        const SizedBox(
                          width: 80,
                        ),
                        Text(
                          'Expired: ${DateFormat('dd-MM-yyyy').format(
                            user.expiredDate!,
                          )}',
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
