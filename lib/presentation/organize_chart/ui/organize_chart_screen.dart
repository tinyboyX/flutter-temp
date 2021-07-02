import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/presentation/organize_chart/bloc/organization_chart_bloc.dart';
import 'package:clean_architechture/presentation/organize_chart/model/member_model.dart';
import 'package:clean_architechture/presentation/organize_chart/ui/widget/widget_appbar.dart';
import 'package:clean_architechture/presentation/organize_chart/ui/widget/widget_item.dart';
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
                const OrganizeAppBarWidget(),
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
                              'Left (${list.length})',
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
                    list.length,
                    (index) {
                      return WidgetItem(
                        memberModel: list[index],
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
