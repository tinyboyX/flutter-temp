import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_architechture/presentation/main/ui/widget/bottom_menu_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    selectedItem = menuItems.first;
  }

  var menuItems = [
    BottomMenuItem.HOME,
    BottomMenuItem.ORDER,
    BottomMenuItem.FEED,
    BottomMenuItem.CATEGORY,
    BottomMenuItem.ACCOUNT,
  ];
  PageController pageController = PageController(initialPage: 0);
  late BottomMenuItem selectedItem;

  @override
  Stream<MainState> mapEventToState(
    MainEvent event,
  ) async* {
    if (event is SelectMenuItemEvent) {
      selectPage(event.index!);
      yield SelectIndexState();
    }
    if (event is ScrollMenuItemEvent) {
      selectedItem = menuItems[event.index!];
      yield ScrollIndexState();
    }
  }

  void selectPage(int index) {
    selectedItem = menuItems[index];
    pageController.animateToPage(
      index,
      duration: const Duration(microseconds: 200),
      curve: Curves.easeIn,
    );
  }
}
