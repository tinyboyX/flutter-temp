import 'package:clean_architechture/presentation/report/ui/widget/widget_appbar_report_action_bar.dart';
import 'package:clean_architechture/presentation/report/ui/widget/widget_appbar_report_info.dart';
import 'package:flutter/cupertino.dart';

class WidgetPersonalStatisticAppBar extends StatelessWidget {
  const WidgetPersonalStatisticAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: Stack(
        children: [
          const WidgetAppBarReportAction(),
          const WidgetAppbarInfoReportItem(),
        ],
      ),
    );
  }
}
