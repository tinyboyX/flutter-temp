import 'package:flutter/cupertino.dart';

import 'widget_appbar_report_action_bar.dart';
import 'widget_appbar_report_info.dart';

class AppBarReportWidget extends StatelessWidget {
  const AppBarReportWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: Stack(
        children: [
          const WidgetAppBarReportAction(),
          const WidgetAppbarInfoReportItem(),
          // WidgetAppbarInfoItem(),
        ],
      ),
    );
  }
}
