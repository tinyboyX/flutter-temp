import 'dart:core';

class MemberModel {
  MemberModel({
    required this.memberID,
    required this.memberName,
    required this.memberTeam,
    required this.memberLevel,
    required this.type,
    required this.star,
    required this.cMatching,
    this.hPosition,
  });

  int memberID;
  String memberName;
  String memberTeam;
  int memberLevel;
  String type;
  String star;
  String cMatching;
  String? hPosition;
}
