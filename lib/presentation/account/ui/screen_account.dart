import 'package:clean_architechture/config/navigation_util.dart';
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
  List<ItemModel> items = [
    ItemModel(icon: Icons.lock_clock, title: 'My order', isDivide: false),
    ItemModel(icon: Icons.album, title: 'Report & Analysis', isDivide: false, onTap: (){
      Navigator.pushNamed(NavigationUtil.accountKey.currentContext!, AccountNestedRouteDefine.ReportScreen.name);
    }),
    ItemModel(icon: Icons.person_add, title: 'Sponsor', isDivide: false),
    ItemModel(icon: Icons.room_outlined, title: 'My Organization', isDivide: false),
    ItemModel(icon: Icons.check_sharp, title: 'Transfer BMC PV Point', isDivide: false),
    ItemModel(icon: Icons.kayaking, title: 'SCM Point TopUp', isDivide: false),
    ItemModel(icon: Icons.room_outlined, title: 'Account Information', isDivide: false),
    ItemModel(icon: Icons.g_translate, title: 'Address Book', isDivide: false),
    ItemModel(icon: Icons.track_changes, title: 'Security', isDivide: false),
    ItemModel(icon: Icons.calendar_today, title: 'Note', isDivide: false),
    ItemModel(icon: Icons.favorite_border, title: 'Favorite Product', isDivide: false),
    ItemModel(isDivide: true),
    ItemModel(icon: Icons.notifications, title: 'Notifications', isDivide: false),
    ItemModel(icon: Icons.airplanemode_active, title: 'Trip Promotion', isDivide: false),
    ItemModel(icon: Icons.settings, title: 'Settings', isDivide: false),
    ItemModel(icon: Icons.help, title: 'Help Center', isDivide: false),
  ];

  @override
  Widget build(BuildContext context) {
    final _accountBloc = context.read<AccountBloc>();
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
                    items: items,
                  ),
                  CustomButton(
                      onPressed: () {
                        print('Log out');
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
