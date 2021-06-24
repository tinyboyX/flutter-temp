import 'package:clean_architechture/presentation/account/bloc/main_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/widget_appbar.dart';
import 'widget/widget_list_item.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mainBloc = context.read<MainBloc>();
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const AppBarWidget(),
                  WidgetListItem(
                    items: _mainBloc.items,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
