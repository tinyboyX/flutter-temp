import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:flutter/material.dart';

class WidgetExtendInfo extends StatelessWidget {
  const WidgetExtendInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.lightBlue,
            ),
            child: const Center(
              child: Text('PV', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.blue)),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "39,000",
            style: AppTextStyle.label6,
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.lightOrange,
            ),
            child: Center(
              child: Icon(
                Icons.backup,
                color: AppColors.orange,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
