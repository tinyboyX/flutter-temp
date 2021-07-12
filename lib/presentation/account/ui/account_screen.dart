import 'package:clean_architechture/config/navigation_util.dart';
import 'package:clean_architechture/utils/route/account_nested_routing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: AccountNestedRouteDefine.AccountScreen.name,
      onGenerateRoute: AccountNestedAppRouting.generateRoute,
      key: NavigationUtil.accountKey,
    );
  }

  @override
  void initState() {
    // final _accountBloc = context.read<AccountBloc>();
    super.initState();
  }
}
