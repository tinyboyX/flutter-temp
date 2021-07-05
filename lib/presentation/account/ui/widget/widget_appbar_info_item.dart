import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/data/main/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class WidgetAppbarInfoItem extends StatelessWidget {
  const WidgetAppbarInfoItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = getTempUser();
    return Positioned(
      top: 110.0,
      left: 20.0,
      right: 20.0,
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 10,
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
                Text(
                  user.fullName!,
                  style: AppTextStyle.username,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'SCM Business (ID: ${user.scmBusinessID})',
                  style: AppTextStyle.text7,
                )
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
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
      ),
    );
  }
}
