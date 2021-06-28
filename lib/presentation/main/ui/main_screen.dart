import 'package:clean_architechture/presentation/main/bloc/main_bloc.dart';
import 'package:clean_architechture/presentation/main/ui/widget/bottom_menu_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/bottom_menu_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late MainBloc bloc;

  @override
  void initState() {
    bloc = context.read<MainBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: BlocConsumer<MainBloc, MainState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: bloc.pageController,
                    onPageChanged: (index) {
                      bloc.add(ScrollMenuItemEvent(index: index));
                    },
                    children: bloc.menuItems.map((bottomMenu) => bottomMenu.page).toList(),
                  );
                }),
          ),
          const BottomMenuWidget()
        ],
      ),
    );
  }
}
