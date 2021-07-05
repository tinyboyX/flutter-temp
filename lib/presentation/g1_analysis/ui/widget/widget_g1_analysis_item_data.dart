import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/data/main/model/chart_item_member_model.dart';
import 'package:clean_architechture/presentation/g1_analysis/model/grid_view_item_model.dart';
import 'package:flutter/cupertino.dart';

import 'widget_g1_analysis_show_data.dart';

class WidgetG1AnalysisItemData extends StatelessWidget {
  const WidgetG1AnalysisItemData({Key? key, required this.selected, required this.memberModel}) : super(key: key);
  final bool selected;
  final MemberModel memberModel;

  @override
  Widget build(BuildContext context) {
    final listGridItem = [
      GridViewItemModel(
        title: 'Apply Date',
        data: memberModel.applyDate,
        isIcon: false,
      ),
      GridViewItemModel(
        title: 'Expire Date',
        data: memberModel.expireDate,
        isIcon: false,
      ),
      GridViewItemModel(
        title: 'Upgrade Expire Date',
        data: memberModel.upgradeExpireDate,
        isIcon: false,
      ),
      GridViewItemModel(
        title: 'Apply Level',
        data: memberModel.typeApplyLevel,
        isIcon: false,
      ),
      GridViewItemModel(
        title: 'Max Pin',
        data: memberModel.maxPin,
        isIcon: false,
      ),
      GridViewItemModel(
        title: 'Last Pin',
        data: memberModel.lastPin,
        isIcon: false,
      ),
      GridViewItemModel(
        title: 'Star',
        data: memberModel.star,
        isIcon: false,
      ),
      GridViewItemModel(
        title: 'New Sponsor',
        data: memberModel.newSponsor,
        isIcon: false,
      ),
      GridViewItemModel(
        title: 'Mem to Sup',
        data: memberModel.memToSup,
        isIcon: false,
      ),
      GridViewItemModel(
        title: 'Mem to Ex',
        data: memberModel.memToEx,
        isIcon: false,
      ),
      GridViewItemModel(
        title: 'Own PV',
        data: memberModel.ownPV,
        isIcon: false,
      ),
      GridViewItemModel(
        isIcon: true,
        isTransfer: false,
      ),
      GridViewItemModel(
        title: 'Left PV',
        data: memberModel.leftPV,
        isIcon: false,
      ),
      GridViewItemModel(
        title: 'Right PV',
        data: memberModel.rightPV,
        isIcon: false,
      ),
      GridViewItemModel(
        title: 'PV Level',
        data: memberModel.pvLevel,
        isIcon: false,
      ),
      GridViewItemModel(
        isIcon: true,
        isTransfer: true,
      ),
    ];
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 200),
      opacity: selected ? 1.0 : 0.0,
      curve: selected ? Curves.easeIn : Curves.easeOut,
      child: Container(
          height: selected ? 400 : 0,
          child: GridView.count(
            padding: EdgeInsets.symmetric(vertical: 5),
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 4,
            children: List<Widget>.generate(
              listGridItem.length,
              (index) {
                return WidgetG1AnalysisGridItem(
                  gridViewItemModel: listGridItem[index],
                );
              },
            ),
          )),
    );
  }
}
