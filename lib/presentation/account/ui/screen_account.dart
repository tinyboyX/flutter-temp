import 'package:clean_architechture/presentation/account/bloc/account_bloc.dart';
import 'package:clean_architechture/presentation/common/widget/widget_custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/widget_appbar.dart';
import 'widget/widget_list_item.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _accountBloc = context.read<AccountBloc>();
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const AppBarWidget(),
                WidgetListItem(
                  items: _accountBloc.items,
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
    );
  }
}
