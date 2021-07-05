import 'package:clean_architechture/presentation/report/ui/widget/widget_appbar_report.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalStatisticScreen extends StatelessWidget {
  const PersonalStatisticScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarReportWidget(),
            Slider(
              max: 1000,
              min: 0,
              value: 500,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
