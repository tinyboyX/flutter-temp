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
  _PersonalStatisticScreenState createState() =>
      _PersonalStatisticScreenState();
}

class _PersonalStatisticScreenState extends State<PersonalStatisticScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const WidgetPersonalStatisticAppBar(),
              const WidgetPersonalStatisticGridView(),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: CustomButton(
                  onPressed: () {},
                  bgColor: AppColors.orange,
                  appTextStyle: AppTextStyle.textPersonalStatisticButton,
                  text: 'View My Organization Tree',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: CustomButton(
                  onPressed: () {},
                  bgColor: AppColors.orange,
                  appTextStyle: AppTextStyle.textPersonalStatisticButton,
                  text: 'View Full Report and Analysis',
                ),
              ),
              const SizedBox(
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
