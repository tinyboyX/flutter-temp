import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/data/main/model/chart_item_member_model.dart';
import 'package:clean_architechture/presentation/common/widget/widget_notification_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'widget_g1_analysis_item_data.dart';

class WidgetG1AnalysisItem extends StatefulWidget {
  WidgetG1AnalysisItem({Key? key, this.color, required this.memberModel})
      : super(key: key);
  final Color? color;
  final MemberModel memberModel;

  @override
  _WidgetG1AnalysisItemState createState() => _WidgetG1AnalysisItemState();
}

class _WidgetG1AnalysisItemState extends State<WidgetG1AnalysisItem> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: widget.color,
        border: Border.all(
            width: 2, color: selected ? Colors.orange : Colors.transparent),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Container(
              height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                fit: FlexFit.tight,
                                flex: 3,
                                child: Text(
                                  widget.memberModel.memberID.toString(),
                                  style: AppTextStyle.memberID,
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: widget.memberModel.status!
                                    ? const Icon(
                                        Icons.account_tree,
                                        color: AppColors.blue,
                                        size: 15,
                                      )
                                    : Container(),
                              ),
                              Expanded(
                                flex: 1,
                                child: widget.memberModel.status!
                                    ? const Icon(
                                        Icons.zoom_out_map,
                                        color: AppColors.blue,
                                        size: 15,
                                      )
                                    : Container(),
                              ),
                              Expanded(
                                flex: 1,
                                child: widget.memberModel.status!
                                    ? const Icon(
                                        Icons.supervised_user_circle_sharp,
                                        color: AppColors.blue,
                                        size: 15,
                                      )
                                    : Container(),
                              ),
                            ],
                          ),
                          Text(
                            widget.memberModel.memberName,
                            style: AppTextStyle.label6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        widget.memberModel.memberTeam,
                        style: AppTextStyle.label6,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      widget.memberModel.status! ? 'Active' : 'Not Active',
                      style: widget.memberModel.status!
                          ? AppTextStyle.activeStatus
                          : AppTextStyle.notActiveStatus,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: WidgetNotificationIcon(
                      iconData: !selected
                          ? Icons.keyboard_arrow_down_rounded
                          : Icons.keyboard_arrow_up_rounded,
                      onTap: () {
                        setState(() {
                          selected = !selected;
                        });
                      },
                      color: !selected ? Colors.black : Colors.orange,
                      backgroundColor: Colors.grey.shade100,
                      size: 24,
                    ),
                  )
                ],
              ),
            ),
          ),
          WidgetG1AnalysisItemData(
            selected: selected,
            memberModel: widget.memberModel,
          ),
        ],
      ),
    );
  }
}
