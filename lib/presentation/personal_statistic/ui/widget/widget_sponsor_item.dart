import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/data/main/model/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WidgetSponsorItem extends StatelessWidget {
  const WidgetSponsorItem({Key? key, required this.user}) : super(key: key);
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10, top: 5),
              height: 20,
              child: Text(
                'Sponsor',
                style: AppTextStyle.label8,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black,
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      color: AppColors.white,
                      child: Text(user.avatar!),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            user.fullName!,
                            style: AppTextStyle.label5,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: user.isVerify!
                                ? RichText(
                                    text: const TextSpan(
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
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
