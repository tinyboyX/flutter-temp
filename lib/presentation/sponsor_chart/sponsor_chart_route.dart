import 'package:clean_architechture/presentation/sponsor_chart/ui/sponsor_chart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/sponsor_chart_bloc.dart';

class SponsorChartRoute {
  static Widget get route => BlocProvider(
        create: (context) => SponsorChartBloc(),
        child: const SponsorChartScreen(),
      );
}
