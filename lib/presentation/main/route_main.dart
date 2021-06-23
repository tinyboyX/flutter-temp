import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/presentation/main/bloc/main_bloc.dart';
import 'ui/screen_main.dart';

class MainRoute {
  static Widget get route => BlocProvider(
        create: (context) => MainBloc(),
        child: MainScreen(),
      );
}
