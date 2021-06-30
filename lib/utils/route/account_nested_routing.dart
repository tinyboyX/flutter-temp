import 'package:clean_architechture/presentation/organize_chart/organize_chart_route.dart';
import 'package:clean_architechture/presentation/report/report_route.dart';
import 'package:flutter/material.dart';

enum AccountNestedRouteDefine { ReportScreen, OrganizeChartScreen }

class AccountNestedAppRouting {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    final routes = <String, WidgetBuilder>{
      AccountNestedRouteDefine.ReportScreen.name: (_) => ReportRoute.route,
      AccountNestedRouteDefine.OrganizeChartScreen.name: (_) => OrganizeChartRoute.route,
    };

    final routeBuilder = routes[settings.name];
    return _NoAnimationMaterialPageRoute(
      builder: (context) => routeBuilder!(context),
      settings: RouteSettings(name: settings.name),
    );
  }
}

class _NoAnimationMaterialPageRoute<T> extends MaterialPageRoute<T> {
  _NoAnimationMaterialPageRoute({
    required WidgetBuilder builder,
    required RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
          builder: builder,
          maintainState: maintainState,
          settings: settings,
          fullscreenDialog: fullscreenDialog,
        );

  @override
  Widget buildTransitions(_, __, ___, Widget child) => child;
}

extension RouteExt on Object {
  /// Use this to get the enum value converted to string.
  ///
  /// Eg.
  /// ```dart
  /// print(SomeEnum.someValue.name) // someValue
  /// ```
  ///
  String get name => toString().substring(toString().indexOf('.') + 1);
}
