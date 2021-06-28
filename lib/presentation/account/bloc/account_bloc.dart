import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_architechture/data/main/model/item_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'account_event.dart';

part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(AccountInitial());
  List<ItemModel> items = [
    ItemModel(icon: Icons.lock_clock, title: 'My order', isDivide: false),
    ItemModel(icon: Icons.album, title: 'Report & Analysis', isDivide: false),
    ItemModel(icon: Icons.person_add, title: 'Sponsor', isDivide: false),
    ItemModel(icon: Icons.room_outlined, title: 'My Organization', isDivide: false),
    ItemModel(icon: Icons.check_sharp, title: 'Transfer BMC PV Point', isDivide: false),
    ItemModel(icon: Icons.kayaking, title: 'SCM Point TopUp', isDivide: false),
    ItemModel(icon: Icons.room_outlined, title: 'Account Information', isDivide: false),
    ItemModel(icon: Icons.g_translate, title: 'Address Book', isDivide: false),
    ItemModel(icon: Icons.track_changes, title: 'Security', isDivide: false),
    ItemModel(icon: Icons.calendar_today, title: 'Note', isDivide: false),
    ItemModel(icon: Icons.favorite_border, title: 'Favorite Product', isDivide: false),
    ItemModel(isDivide: true),
    ItemModel(icon: Icons.notifications, title: 'Notifications', isDivide: false),
    ItemModel(icon: Icons.airplanemode_active, title: 'Trip Promotion', isDivide: false),
    ItemModel(icon: Icons.settings, title: 'Settings', isDivide: false),
    ItemModel(icon: Icons.help, title: 'Help Center', isDivide: false),
  ];

  @override
  Stream<AccountState> mapEventToState(
    AccountEvent event,
  ) async* {}
}
