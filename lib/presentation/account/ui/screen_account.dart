import 'package:clean_architechture/config/theme.dart';
import 'package:clean_architechture/presentation/account/bloc/account_bloc.dart';
import 'package:clean_architechture/presentation/account/ui/widget/widget_list_item.dart';
import 'package:clean_architechture/presentation/common/widget/widget_custom_button.dart';
import 'package:clean_architechture/utils/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/widget_appbar.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({
    Key? key,
  }) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    final _accountBloc = context.read<AccountBloc>();
    var appTheme = getIt<AppTheme>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: appTheme.currentTheme,
      home: BlocBuilder<AccountBloc, AccountState>(
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const AppBarWidget(),
                  WidgetListItem(
                    items: _accountBloc.items,
                    onTap: () {
                      
                    },
                  ),
                  CustomButton(
                      onPressed: () {
                        return print('Log out');
                      },
                      text: 'LOG OUT'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
