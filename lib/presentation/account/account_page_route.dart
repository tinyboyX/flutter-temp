import 'package:clean_architechture/presentation/account/ui/account_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/account_bloc.dart';

class AccountPageRoute {
  static Widget get route => BlocProvider(
    create: (context) => AccountBloc(),
    child: const AccountPage(),
  );
}