import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/presentation/account/ui/widget/widget_appbar.dart';
import 'package:clean_architechture/presentation/account_information/model/account_information_item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/widget_info_item.dart';

class AccountInformationScreen extends StatefulWidget {
  const AccountInformationScreen({Key? key}) : super(key: key);

  @override
  _AccountInformationScreenState createState() => _AccountInformationScreenState();
}

class _AccountInformationScreenState extends State<AccountInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const AppBarWidget(),
            Column(
              children: List<Widget>.generate(
                listAccountInformation.length,
                (index) {
                  return WidgetInfoItem(
                    accountInformationItemModel: listAccountInformation[index],
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
