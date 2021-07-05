import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/data/main/model/chart_item_member_model.dart';
import 'package:clean_architechture/presentation/common/widget/widget_notification_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'widget_g1_analysis_item_data.dart';

class WidgetG1AnalysisItem extends StatefulWidget {
  WidgetG1AnalysisItem({Key? key, this.color, required this.memberModel}) : super(key: key);
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
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: widget.color,
        border: Border.all(width: 2, color: selected ? Colors.orange : Colors.transparent),
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
              color: Colors.transparent,
              height: 70,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: SizedBox(
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                width: 75,
                                child: Text(
                                  widget.memberModel.memberID.toString(),
                                  style: AppTextStyle.memberID,
                                ),
                              ),
                              Container(
                                width: 25,
                                child: widget.memberModel.status!
                                    ? const Icon(
                                        Icons.account_tree,
                                        color: AppColors.blue,
                                        size: 20,
                                      )
                                    : null,
                              ),
                              Container(
                                width: 25,
                                child: widget.memberModel.status!
                                    ? const Icon(
                                        Icons.zoom_out_map,
                                        color: AppColors.blue,
                                        size: 20,
                                      )
                                    : null,
                              ),
                              Container(
                                width: 25,
                                child: widget.memberModel.status!
                                    ? const Icon(
                                        Icons.supervised_user_circle_sharp,
                                        color: AppColors.blue,
                                        size: 20,
                                      )
                                    : null,
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
                  SizedBox(
                    width: 50,
                    child: Center(
                      child: Text(
                        widget.memberModel.memberTeam,
                        style: AppTextStyle.label6,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: Text(
                      widget.memberModel.status! ? 'Active' : 'Not Active',
                      style: widget.memberModel.status! ? AppTextStyle.activeStatus : AppTextStyle.notActiveStatus,
                    ),
                  ),
                  WidgetNotificationIcon(
                    iconData: !selected ? Icons.keyboard_arrow_down_rounded : Icons.keyboard_arrow_up_rounded,
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    color: !selected ? Colors.black : Colors.orange,
                    backgroundColor: Colors.grey.shade100,
                    size: 25,
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
