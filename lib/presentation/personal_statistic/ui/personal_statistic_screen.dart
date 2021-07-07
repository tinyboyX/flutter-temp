import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/presentation/common/widget/widget_custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/widget_personal_statistic_app_bar.dart';
import 'widget/widget_personal_statistic_grid_view.dart';

class PersonalStatisticScreen extends StatefulWidget {
  const PersonalStatisticScreen({Key? key}) : super(key: key);

  @override
  _PersonalStatisticScreenState createState() => _PersonalStatisticScreenState();
}

class _PersonalStatisticScreenState extends State<PersonalStatisticScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.grey.shade200,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const WidgetPersonalStatisticAppBar(),
              const WidgetPersonalStatisticGridView(),
              CustomButton(
                paddingTop: 10,
                paddingLeft: 15,
                paddingRight: 15,
                paddingBot: 10,
                onPressed: () {},
                bgColor: AppColors.orange,
                appTextStyle: AppTextStyle.textPersonalStatisticButton,
                text: 'View My Organization Tree',
              ),
              CustomButton(
                paddingTop: 10,
                paddingLeft: 15,
                paddingRight: 15,
                paddingBot: 10,
                onPressed: () {},
                bgColor: AppColors.orange,
                appTextStyle: AppTextStyle.textPersonalStatisticButton,
                text: 'View Full Report and Analysis',
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
