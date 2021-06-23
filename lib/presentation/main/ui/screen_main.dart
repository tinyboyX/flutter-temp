import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/widget_appbar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarWidget(),
            Container(height: 100,color: Colors.black,)
          ],
        ),
      ),
    );
  }
}
