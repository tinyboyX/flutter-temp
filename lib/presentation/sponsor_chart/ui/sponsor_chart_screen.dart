import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/data/main/model/chart_item_member_model.dart';
import 'package:clean_architechture/presentation/common/widget/chart/widget/widget_chart_appbar.dart';
import 'package:clean_architechture/presentation/common/widget/chart/widget/widget_chart_item.dart';
import 'package:clean_architechture/presentation/sponsor_chart/bloc/sponsor_chart_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SponsorChartScreen extends StatelessWidget {
  const SponsorChartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SponsorChartBloc, SponsorChartState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const CommonChartAppBarWidget(),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Organization Tree',
                        style: AppTextStyle.label6,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Left (${listSponsorChart.length})',
                              style: AppTextStyle.label6,
                            ),
                            const Icon(Icons.keyboard_arrow_down_rounded)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  color: Colors.grey.shade300,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'User',
                        style: AppTextStyle.label6,
                      ),
                      const SizedBox(
                        width: 90,
                      ),
                      Text(
                        'Team',
                        style: AppTextStyle.label6,
                      ),
                      Text(
                        'Level',
                        style: AppTextStyle.label6,
                      ),
                      const SizedBox(
                        width: 40,
                      )
                    ],
                  ),
                ),
                Column(
                  children: List<Widget>.generate(
                    listOrganizeChart.length,
                    (index) {
                      return WidgetChartItem(
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
      },
    );
  }
}
