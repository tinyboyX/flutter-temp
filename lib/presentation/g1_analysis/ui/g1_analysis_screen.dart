import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/data/main/model/chart_item_member_model.dart';
import 'package:clean_architechture/presentation/common/widget/chart/widget/widget_chart_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/widget_g1_analysis_grid_item.dart';

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
            Container(
              margin: const EdgeInsets.only(left: 10, bottom: 20, top: 20),
              child: Text(
                'G1 Analysis ',
                style: AppTextStyle.label6,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              height: 32,
              color: Colors.grey.shade300,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'User',
                      style: AppTextStyle.label6,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        'Team',
                        style: AppTextStyle.label6,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Status',
                      style: AppTextStyle.label6,
                    ),
                  ),
                  const Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: 24,
                        height: 24,
                      ))
                ],
              ),
            ),
            Column(
              children: List<Widget>.generate(
                listOrganizeChart.length,
                (index) {
                  return WidgetG1AnalysisItem(
                    memberModel: listOrganizeChart[index],
                    color:
                        !(index % 2 == 0) ? Colors.grey.shade300 : Colors.white,
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
