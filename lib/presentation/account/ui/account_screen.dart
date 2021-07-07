import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/navigation_util.dart';
import 'package:clean_architechture/config/styles.dart';
import 'package:clean_architechture/config/theme.dart';
import 'package:clean_architechture/data/main/model/item_model.dart';
import 'package:clean_architechture/presentation/account/bloc/account_bloc.dart';
import 'package:clean_architechture/presentation/account/ui/widget/widget_list_item.dart';
import 'package:clean_architechture/presentation/common/widget/widget_custom_button.dart';
import 'package:clean_architechture/utils/di/injection.dart';
import 'package:clean_architechture/utils/route/account_nested_routing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/widget_appbar.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    var appTheme = getIt<AppTheme>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationUtil.accountKey,
      onGenerateRoute: AccountNestedAppRouting.generateRoute,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: appTheme.currentTheme,
      home: BlocBuilder<AccountBloc, AccountState>(
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
                    paddingTop: 15,
                    paddingLeft: 30,
                    paddingRight: 30,
                    paddingBot: 15,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );

    //
    // return Navigator(
    //
    // );
  }

  @override
  void initState() {
    // final _accountBloc = context.read<AccountBloc>();
    super.initState();
  }
}
