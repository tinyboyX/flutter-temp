import 'package:clean_architechture/presentation/organize_chart/ui/organize_chart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/organization_chart_bloc.dart';

class OrganizeChartRoute {
  static Widget get route => BlocProvider(
        create: (context) => OrganizationChartBloc(),
        child: const OrganizeChartScreen(),
      );
}
