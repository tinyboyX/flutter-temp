import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/data/main/model/grid_view_item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetPersonalStatisticGridviewItem extends StatelessWidget {
  const WidgetPersonalStatisticGridviewItem({Key? key, required this.item}) : super(key: key);
  final GridViewItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, top: 5),
            height: 30,
            child: Text(
              '${item.title}',
              style: AppTextStyle.label8,
            ),
          ),
          Center(
            child: Container(
              height: 40,
              child: Text(
                '${item.data}',
                style: AppTextStyle.dataText6,
              ),
            ),
          )
        ],
      ),
    );
  }
}
