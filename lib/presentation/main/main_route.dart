import 'ui/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/main_bloc.dart';


class MainRoute {
  static Widget get route => BlocProvider(
        create: (context) => MainBloc(),
        child: const MainScreen(),
      );
}
