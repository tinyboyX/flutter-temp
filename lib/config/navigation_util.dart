import 'package:flutter/cupertino.dart';

class NavigationUtil {
  static final GlobalKey<NavigatorState> _rootNavigator = GlobalKey();
  static final GlobalKey<NavigatorState> _accountNavigator = GlobalKey();

  // For get current context. Can use rootKey.currentContext
  static GlobalKey<NavigatorState> get rootKey => _rootNavigator;

  static GlobalKey<NavigatorState> get accountKey => _accountNavigator;

  static BuildContext? get currentContext => rootKey.currentContext;
}
