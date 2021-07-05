import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/presentation/g1_analysis/model/grid_view_item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetG1AnalysisGridItem extends StatelessWidget {
  const WidgetG1AnalysisGridItem({Key? key, required this.gridViewItemModel}) : super(key: key);
  final GridViewItemModel gridViewItemModel;

  @override
  Widget build(BuildContext context) {
    return !gridViewItemModel.isIcon
        ? Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  gridViewItemModel.title ?? '',
                  style: AppTextStyle.label7,
                ),
                Text(
                  gridViewItemModel.data ?? '',
                  style: AppTextStyle.text7,
                )
              ],
            ),
          )
        : Container(
            child: Icon(
              !gridViewItemModel.isTransfer! ? Icons.drive_file_move_outline : Icons.dashboard_customize,
              color: !gridViewItemModel.isTransfer! ? AppColors.blue : AppColors.grey,
            ),
          );
  }
}
