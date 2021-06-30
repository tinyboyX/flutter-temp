import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_architechture/data/main/model/item_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'account_event.dart';

part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(AccountInitial());


  @override
  Stream<AccountState> mapEventToState(
    AccountEvent event,
  ) async* {}
}
