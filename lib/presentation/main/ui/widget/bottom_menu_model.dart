import 'package:clean_architechture/presentation/account/account_route.dart';
import 'package:clean_architechture/presentation/category/category_route.dart';
import 'package:clean_architechture/presentation/home/home_route.dart';
import 'package:clean_architechture/presentation/login/login_route.dart';
import 'package:clean_architechture/presentation/order/order_route.dart';
import 'package:flutter/material.dart';

enum BottomMenuItem { HOME, ORDER, FEED, CATEGORY, ACCOUNT }

extension BottomMenuItemExtends on BottomMenuItem {
  Widget get page {
    switch (this) {
      case BottomMenuItem.HOME:
        return HomeRoute.route;
      case BottomMenuItem.ORDER:
        return OrderRoute.route;
      case BottomMenuItem.FEED:
        return LoginRoute.route;
      case BottomMenuItem.CATEGORY:
        return CategoryRoute.route;
      case BottomMenuItem.ACCOUNT:
        return AccountRoute.route;
      default:
        return Container();
    }
  }

  IconData get icon {
    switch (this) {
      case BottomMenuItem.HOME:
        return Icons.home;
      case BottomMenuItem.FEED:
        return Icons.badge;
      case BottomMenuItem.ACCOUNT:
        return Icons.account_circle;
      case BottomMenuItem.CATEGORY:
        return Icons.category;
      case BottomMenuItem.ORDER:
        return Icons.event_note_sharp;
      default:
        return Icons.home;
    }
  }

  String get title {
    switch (this) {
      case BottomMenuItem.HOME:
        return 'Home';
      case BottomMenuItem.FEED:
        return 'Feed';
      case BottomMenuItem.ACCOUNT:
        return 'Account';
      case BottomMenuItem.CATEGORY:
        return 'Category';
      case BottomMenuItem.ORDER:
        return 'My order';
      default:
        return '';
    }
  }
}
