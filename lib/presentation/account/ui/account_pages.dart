import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/data/main/model/item_model.dart';
import 'package:clean_architechture/presentation/account/bloc/account_bloc.dart';
import 'package:clean_architechture/presentation/account/ui/widget/widget_list_item.dart';
import 'package:clean_architechture/presentation/common/widget/widget_custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/widget_appbar.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (blocContext, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const AppBarWidget(),
                WidgetListItem(
                  items: accountItems,
                ),
                CustomButton(
                  bgColor: AppColors.white,
                  onPressed: () {
                    print('Log out');
                  },
                  text: 'LOG OUT',
                  appTextStyle: AppTextStyle.buttonLabel,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
