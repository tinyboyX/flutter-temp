import 'package:clean_architechture/config/navigation_util.dart';
import 'package:clean_architechture/utils/route/account_nested_routing.dart';
import 'package:flutter/material.dart';

class ItemModel {
  ItemModel({this.icon, this.title, this.isDivide, this.onTap});

  IconData? icon;
  String? title;
  bool? isDivide;
  VoidCallback? onTap;
}

List<ItemModel> accountItems = [
  ItemModel(icon: Icons.lock_clock, title: 'My order', isDivide: false),
  ItemModel(
      icon: Icons.album,
      title: 'Report & Analysis',
      isDivide: false,
      onTap: () {
        Navigator.pushNamed(NavigationUtil.accountKey.currentContext!, AccountNestedRouteDefine.ReportScreen.name);
      }),
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
final List<ItemModel> itemsPersonal = [
  ItemModel(
      icon: Icons.add_task_outlined,
      title: 'Personal Statistic',
      isDivide: false,
      onTap: () {
        Navigator.pushNamed(NavigationUtil.accountKey.currentContext!, AccountNestedRouteDefine.PersonalStatisticScreen.name);
      }),
  ItemModel(
      icon: Icons.person_add,
      title: 'Account Information',
      isDivide: false,
      onTap: () {
        Navigator.pushNamed(NavigationUtil.accountKey.currentContext!, AccountNestedRouteDefine.AccountInformationScreen.name);
      }),
  ItemModel(
      icon: Icons.album,
      title: 'Organization Chart',
      isDivide: false,
      onTap: () {
        Navigator.pushNamed(NavigationUtil.accountKey.currentContext!, AccountNestedRouteDefine.OrganizeChartScreen.name);
      }),
  ItemModel(
      icon: Icons.room_outlined,
      title: 'Sponsor Chart',
      isDivide: false,
      onTap: () {
        Navigator.pushNamed(NavigationUtil.accountKey.currentContext!, AccountNestedRouteDefine.SponsorChartScreen.name);
      }),
  ItemModel(isDivide: true),
];

final List<ItemModel> itemsDirectSponsor = [
  ItemModel(icon: Icons.add_task_outlined, title: 'G1 Analysis', isDivide: false),
  ItemModel(icon: Icons.add_task_outlined, title: 'Direct Sponsor Analysis', isDivide: false),
  ItemModel(icon: Icons.add_task_outlined, title: 'New Pin of Direct Sponsor Team', isDivide: false),
  ItemModel(icon: Icons.add_task_outlined, title: 'Matching Pin of Direct Sponsor Team', isDivide: false),
  ItemModel(icon: Icons.add_task_outlined, title: 'New Register & Update SE EX S. Team', isDivide: false),
  ItemModel(isDivide: true),
];
final List<ItemModel> itemsTravelBonus = [
  ItemModel(icon: Icons.add_task_outlined, title: 'Trip Progress', isDivide: false),
  ItemModel(icon: Icons.person_add, title: 'Travel PV History', isDivide: false),
  ItemModel(isDivide: true),
];
