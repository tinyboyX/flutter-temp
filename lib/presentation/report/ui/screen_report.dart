import 'package:clean_architechture/data/main/model/item_model.dart';
import 'package:clean_architechture/presentation/common/widget/widget_expansion_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/widget_appbar_report.dart';

class ReportScreen extends StatelessWidget {
  ReportScreen({Key? key}) : super(key: key);
  final List<ItemModel> items = [
    ItemModel(icon: Icons.add_task_outlined, title: 'Personal Statistic', isDivide: false),
    ItemModel(icon: Icons.person_add, title: 'Account Information', isDivide: false),
    ItemModel(icon: Icons.album, title: 'Organization Chart', isDivide: false),
    ItemModel(icon: Icons.room_outlined, title: 'Sponsor Chart', isDivide: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarReportWidget(),
            ExpansionListItem(
              title: 'Personal Report',
              items: items,
            ),
            ExpansionListItem(
              title: 'Personal Report',
              items: items,
            ),
            ExpansionListItem(
              title: 'Personal Report',
              items: items,
            )
          ],
        ),
      ),
    );
  }
}
