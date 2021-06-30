import 'package:clean_architechture/config/colors.dart';
import 'package:clean_architechture/config/theme.dart';
import 'package:clean_architechture/presentation/main/bloc/main_bloc.dart';
import 'package:clean_architechture/presentation/main/ui/widget/menu_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bottom_menu_model.dart';

class BottomMenuWidget extends StatefulWidget {
  const BottomMenuWidget({Key? key}) : super(key: key);

  @override
  _BottomMenuWidgetState createState() => _BottomMenuWidgetState();
}

class _BottomMenuWidgetState extends State<BottomMenuWidget> {
  late MainBloc bloc;

  @override
  void initState() {
    bloc = context.read<MainBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
      listener: (context, state) {},
      buildWhen: (pre, cur) {
        if (cur is SelectIndexState) {
          return false;
        }
        return true;
      },
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                spreadRadius: 1,
                blurRadius: 5,
              ),
            ],
            color: AppTheme().isLightMode(context) ? AppColors.black : AppColors.white,
          ),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: bloc.menuItems
                .map(
                  (bottomMenuItem) => MenuItem(
                    icon: bottomMenuItem.icon,
                    title: bottomMenuItem.title,
                    isSelected: bloc.selectedItem == bottomMenuItem,
                    onClick: () {
                      bloc.add(
                        SelectMenuItemEvent(index: bottomMenuItem.index),
                      );
                    },
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
