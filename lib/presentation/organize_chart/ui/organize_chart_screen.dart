import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/data/main/model/chart_item_member_model.dart';
import 'package:clean_architechture/presentation/common/widget/chart/widget/widget_chart_appbar.dart';
import 'package:clean_architechture/presentation/common/widget/chart/widget/widget_chart_item.dart';
import 'package:clean_architechture/presentation/organize_chart/bloc/organization_chart_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrganizeChartScreen extends StatefulWidget {
  const OrganizeChartScreen({Key? key}) : super(key: key);

  @override
  _OrganizeChartScreenState createState() => _OrganizeChartScreenState();
}

class _OrganizeChartScreenState extends State<OrganizeChartScreen> {
  @override
  void initState() {
    // final _organizeChartBloc = context.read<OrganizationChartBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrganizationChartBloc, OrganizationChartState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const CommonChartAppBarWidget(),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Your Organization Tree',
                          style: AppTextStyle.label6,
                        ),
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
                              'Left (${listOrganizeChart.length})',
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
                  height: 32,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  color: Colors.grey.shade300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: Text(
                            'User',
                            style: AppTextStyle.label6,
                          ),
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
                        child: Center(
                          child: Text(
                            'Level',
                            style: AppTextStyle.label6,
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: List<Widget>.generate(
                    listOrganizeChart.length,
                        (index) {
                      return WidgetChartItem(
                        memberModel: listOrganizeChart[index],
                        color: !(index % 2 == 0)
                            ? Colors.grey.shade300
                            : Colors.white,
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
