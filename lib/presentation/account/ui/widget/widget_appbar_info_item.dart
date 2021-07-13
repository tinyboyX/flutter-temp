import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/data/main/model/user_model.dart';
import 'package:clean_architechture/presentation/account/ui/widget/widget_appbar_statistic_point_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidgetAppbarInfoItem extends StatelessWidget {
  const WidgetAppbarInfoItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = getTempUser();
    return Positioned(
      top: 91.0,
      left: 16.0,
      right: 16.0,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 8, top: 5, bottom: 5),
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2.5,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.lightOrange,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.orange,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: const Center(child: Text('S')),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 184.w,
                  height: 51,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.fullName!,
                        style: AppTextStyle.username,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'SCM Business (ID: ${user.scmBusinessID})',
                        style: AppTextStyle.scmID,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 20,
                  alignment: Alignment.topLeft,
                  child: user.isVerify!
                      ? const Center(
                          child: Icon(
                            Icons.verified,
                            color: AppColors.blue,
                            size: 18,
                          ),
                        )
                      : null,
                ),
                const Expanded(child: SizedBox()),
                Center(
                  child: Container(
                    height: 26,
                    width: 26,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          width: 1,
                          color: AppColors.black,
                        )),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            margin: const EdgeInsets.symmetric(vertical: 16),
            height: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const WidgetAppbarStatisticPointItem(
                          value: 125232,
                          unit: 'THB',
                          isSCMP: false,
                        ),
                        const WidgetAppbarStatisticPointItem(
                          value: 39000,
                          unit: 'PV',
                          isSCMP: false,
                        ),
                      ],
                    ),
                  ),
                ),
                const Center(
                  child: SizedBox(
                    height: 60,
                    child: Expanded(
                      child: VerticalDivider(
                        width: 2,
                        color: AppColors.grey,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const WidgetAppbarStatisticPointItem(
                          value: 1000,
                          unit: 'Point',
                          isSCMP: true,
                        ),
                        const WidgetAppbarStatisticPointItem(
                          value: 5000,
                          unit: 'THB',
                          isSCMP: false,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
