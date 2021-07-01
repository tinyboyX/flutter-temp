import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/account_bloc.dart';
import 'ui/account_screen.dart';

class AccountRoute {
  static Widget get route => BlocProvider(
        create: (context) => AccountBloc(),
        child: const AccountScreen(),
      );
}
