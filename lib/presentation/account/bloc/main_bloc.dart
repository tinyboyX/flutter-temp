import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clean_architechture/data/main/model/item_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial());
  List<ItemModel> items = [
    ItemModel(icon: Icons.add_task_outlined, title: 'My order', isDivide: false),
    ItemModel(icon: Icons.album, title: 'Report & Analysis', isDivide: false),
    ItemModel(icon: Icons.person_add, title: 'Sponsor', isDivide: false),
    ItemModel(icon: Icons.room_outlined, title: 'My Organization', isDivide: false),
    ItemModel(icon: Icons.room_outlined, title: 'Transfer BMC PV Point', isDivide: false),
    ItemModel(icon: Icons.room_outlined, title: 'SCM Point TopUp', isDivide: false),
    ItemModel(icon: Icons.room_outlined, title: 'Account Information', isDivide: false),
    ItemModel(icon: Icons.room_outlined, title: 'Address Book', isDivide: false),
    ItemModel(icon: Icons.room_outlined, title: 'Security', isDivide: false),
    ItemModel(icon: Icons.calendar_today, title: 'Note', isDivide: false),
    ItemModel(icon: Icons.favorite_border, title: 'Favorite Product', isDivide: false),
    ItemModel(isDivide: true),
    ItemModel(icon: Icons.notifications, title: 'Notifications', isDivide: false),
    ItemModel(icon: Icons.airplanemode_active, title: 'Trip Promotion', isDivide: false),
    ItemModel(icon: Icons.settings, title: 'Settings', isDivide: false),
    ItemModel(icon: Icons.help, title: 'Help Center', isDivide: false),
  ];

  @override
  Stream<MainState> mapEventToState(
    MainEvent event,
  ) async* {}
}
