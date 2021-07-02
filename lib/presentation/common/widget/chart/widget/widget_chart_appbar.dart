import 'package:clean_architechture/presentation/account/ui/widget/widget_appbar_info_item.dart';
import 'package:flutter/cupertino.dart';

import 'widget_chart_appbar_action.dart';

class CommonChartAppBarWidget extends StatelessWidget {
  const CommonChartAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      child: Stack(
        children: [
          const OrganizeWidgetAppBarAction(),
          const WidgetAppbarInfoItem(),
        ],
      ),
    );
  }
}
