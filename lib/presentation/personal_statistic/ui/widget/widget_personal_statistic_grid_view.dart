import 'package:clean_architechture/data/main/model/user_model.dart';
import 'package:clean_architechture/presentation/personal_statistic/model/gridview_item_temp_data.dart';
import 'package:clean_architechture/presentation/personal_statistic/ui/widget/widget_sponsor_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'widget_personal_statistic_gridview_item.dart';
import 'widget_personal_statistic_pv_progress_bar.dart';

class WidgetPersonalStatisticGridView extends StatefulWidget {
  const WidgetPersonalStatisticGridView({Key? key}) : super(key: key);

  @override
  _WidgetPersonalStatisticGridViewState createState() => _WidgetPersonalStatisticGridViewState();
}

class _WidgetPersonalStatisticGridViewState extends State<WidgetPersonalStatisticGridView> {
  @override
  Widget build(BuildContext context) {
    final user = getTempUser();
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 920,
      child: StaggeredGridView.countBuilder(
        padding: const EdgeInsets.only(top: 10),
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: listTempGridItem.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index == 2) {
            return const WidgetPersonalStatisticPVProgressBar();
          }
          if (index == listTempGridItem.length) {
            return WidgetSponsorItem(user: user);
          }
          return WidgetPersonalStatisticGridviewItem(item: listTempGridItem[index]);
        },
        staggeredTileBuilder: (int index) {
          if (index == 2 || index == listTempGridItem.length) {
            return const StaggeredTile.count(4, 1.2);
          }
          return const StaggeredTile.count(2, 1);
        },
      ),
    );
  }
}
