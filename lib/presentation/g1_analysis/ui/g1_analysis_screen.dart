import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/data/main/model/chart_item_member_model.dart';
import 'package:clean_architechture/presentation/common/widget/chart/widget/widget_chart_appbar.dart';
import 'package:clean_architechture/presentation/common/widget/widget_notification_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/widget_g1_analysis_item.dart';

class G1AnalysisScreen extends StatelessWidget {
  const G1AnalysisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CommonChartAppBarWidget(),
            Text(
              'G1 Analysis ',
              style: AppTextStyle.label6,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 70,
              color: Colors.grey.shade300,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    child: Text(
                      'User',
                      style: AppTextStyle.label6,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: Center(
                      child: Text(
                        'Team',
                        style: AppTextStyle.label6,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    child: Text(
                      'Status',
                      style: AppTextStyle.label6,
                    ),
                  ),
                  WidgetNotificationIcon(
                    onTap: () {},
                    iconData: Icons.keyboard_arrow_down_rounded,
                    color: Colors.transparent,
                    backgroundColor: Colors.transparent,
                    size: 25,
                  )
                ],
              ),
            ),
            Column(
              children: List<Widget>.generate(
                listOrganizeChart.length,
                (index) {
                  return WidgetG1AnalysisItem(
                    memberModel: listOrganizeChart[index],
                    color: !(index % 2 == 0) ? Colors.grey.shade300 : Colors.white,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
