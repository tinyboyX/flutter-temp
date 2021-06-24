import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/dashboard_bloc.dart';
import 'ui/screen_dashboard.dart';

class DashboardRoute {
  static Widget get route => BlocProvider(
        create: (context) => DashboardBloc(),
        child: const DashboardScreen(),
      );
}
