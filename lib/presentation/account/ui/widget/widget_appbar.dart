import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget_appbar_action_bar.dart';
import 'widget_appbar_info_item.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      child: Stack(
        children: [
           const WidgetAppBarAction(),
           const WidgetAppbarInfoItem(),
        ],
      ),
    );
  }
}
