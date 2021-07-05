import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/g1_analysis_bloc.dart';
import 'ui/g1_analysis_screen.dart';

class G1AnalysisRoute {
  static Widget get route => BlocProvider(
        create: (context) => G1AnalysisBloc(),
        child: const G1AnalysisScreen(),
      );
}
