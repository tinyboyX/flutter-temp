import 'package:clean_architechture/presentation/organize_chart/bloc/organization_chart_bloc.dart';
import 'package:clean_architechture/presentation/organize_chart/model/member_model.dart';
import 'package:clean_architechture/presentation/organize_chart/ui/widget/widget_appbar.dart';
import 'package:clean_architechture/presentation/organize_chart/ui/widget/widget_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrganizeChartScreen extends StatefulWidget {
  const OrganizeChartScreen({Key? key}) : super(key: key);

  @override
  _OrganizeChartScreenState createState() => _OrganizeChartScreenState();
}

class _OrganizeChartScreenState extends State<OrganizeChartScreen> {
  @override
  void initState() {
    // final _organizeChartBloc = context.read<OrganizationChartBloc>();
    super.initState();
  }

  final List<MemberModel> _list = [
    MemberModel(memberID: 1, memberName: 'SomchaiNamsakil', memberTeam: 'Left', memberLevel: 1, type: 'MB', star: 'SS', cMatching: 'SU', hPosition: '-'),
    MemberModel(memberID: 1, memberName: 'SomchaiNamsakil', memberTeam: 'Left', memberLevel: 1, type: 'MB', star: 'SS', cMatching: 'SU', hPosition: '-'),
    MemberModel(memberID: 1, memberName: 'SomchaiNamsakil', memberTeam: 'Left', memberLevel: 1, type: 'MB', star: 'SS', cMatching: 'SU', hPosition: '-'),
    MemberModel(memberID: 1, memberName: 'SomchaiNamsakil', memberTeam: 'Left', memberLevel: 1, type: 'MB', star: 'SS', cMatching: 'SU', hPosition: '-'),
    MemberModel(memberID: 1, memberName: 'SomchaiNamsakil', memberTeam: 'Left', memberLevel: 1, type: 'MB', star: 'SS', cMatching: 'SU', hPosition: '-'),
    MemberModel(memberID: 1, memberName: 'SomchaiNamsakil', memberTeam: 'Left', memberLevel: 1, type: 'MB', star: 'SS', cMatching: 'SU', hPosition: '-'),
    MemberModel(memberID: 1, memberName: 'SomchaiNamsakil', memberTeam: 'Left', memberLevel: 1, type: 'MB', star: 'SS', cMatching: 'SU', hPosition: '-'),
    MemberModel(memberID: 1, memberName: 'SomchaiNamsakil', memberTeam: 'Left', memberLevel: 1, type: 'MB', star: 'SS', cMatching: 'SU', hPosition: '-'),
    MemberModel(memberID: 1, memberName: 'SomchaiNamsakil', memberTeam: 'Left', memberLevel: 1, type: 'MB', star: 'SS', cMatching: 'SU', hPosition: '-'),
    MemberModel(memberID: 1, memberName: 'SomchaiNamsakil', memberTeam: 'Left', memberLevel: 1, type: 'MB', star: 'SS', cMatching: 'SU', hPosition: '-'),
    MemberModel(memberID: 1, memberName: 'SomchaiNamsakil', memberTeam: 'Left', memberLevel: 1, type: 'MB', star: 'SS', cMatching: 'SU', hPosition: '-'),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrganizationChartBloc, OrganizationChartState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const OrganizeAppBarWidget(),
                Column(
                    children: List<Widget>.generate(_list.length, (index) {
                  return WidgetItem(
                    memberModel: _list[index],
                    color: index % 2 == 0 ? Colors.grey.shade300 : Colors.white,
                  );
                }))
              ],
            ),
          ),
        );
      },
    );
  }
}
