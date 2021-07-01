import 'package:clean_architechture/config/navigation_util.dart';
import 'package:clean_architechture/data/main/model/item_model.dart';
import 'package:clean_architechture/presentation/common/widget/widget_expansion_list_item.dart';
import 'package:clean_architechture/utils/route/account_nested_routing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/widget_appbar_report.dart';

class ReportScreen extends StatelessWidget {
  ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarReportWidget(),
            ExpansionListItem(
              title: 'Personal Report',
              items: itemsPersonal,
            ),
            ExpansionListItem(
              title: 'Direct Sponsor Report',
              items: itemsDirectSponsor,
            ),
            ExpansionListItem(
              title: 'Travel Bonus',
              items: itemsTravelBonus,
            )
          ],
        ),
      ),
    );
  }
}
