import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/account_information_bloc.dart';
import 'ui/account_infomation_screen.dart';

class AccountInformationRoute {
  static Widget get route => BlocProvider(
        create: (context) => AccountInformationBloc(),
        child: const AccountInformationScreen(),
      );
}
