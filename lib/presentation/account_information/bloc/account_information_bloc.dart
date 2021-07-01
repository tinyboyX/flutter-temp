import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'account_information_event.dart';
part 'account_information_state.dart';

class AccountInformationBloc extends Bloc<AccountInformationEvent, AccountInformationState> {
  AccountInformationBloc() : super(AccountInformationInitial());

  @override
  Stream<AccountInformationState> mapEventToState(
    AccountInformationEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
