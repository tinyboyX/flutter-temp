import 'package:clean_architechture/presentation/account/ui/account_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/account_bloc.dart';

class AccountRoute {
  static Widget get route => BlocProvider(
    create: (context) => AccountBloc(),
    child: const AccountScreen(),
  );
}
