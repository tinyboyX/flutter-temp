import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/main_bloc.dart';
import 'ui/screen_account.dart';

class AccountRoute {
  static Widget get route => BlocProvider(
        create: (context) => MainBloc(),
        child: const AccountScreen(),
      );
}
