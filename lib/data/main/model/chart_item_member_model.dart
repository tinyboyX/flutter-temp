import 'dart:core';

class MemberModel {
  MemberModel({
    required this.memberID,
    required this.memberName,
    required this.memberTeam,
    required this.memberLevel,
    required this.typeApplyLevel,
    required this.star,
    required this.currentMatching,
    this.highestPosition,
    this.status,
    this.applyDate,
    this.expireDate,
    this.upgradeExpireDate,
    this.maxPin,
    this.lastPin,
    this.newSponsor,
    this.memToSup,
    this.memToEx,
    this.ownPV,
    this.leftPV,
    this.rightPV,
    this.pvLevel,
  });

  int memberID;
  String memberName;
  String memberTeam;
  int memberLevel;
  String typeApplyLevel;
  String star;
  String currentMatching;
  String? highestPosition;
  String? applyDate;
  String? expireDate;
  String? upgradeExpireDate;
  bool? status;
  String? maxPin;
  String? lastPin;
  String? newSponsor;
  String? memToSup;
  String? memToEx;
  String? ownPV;
  String? leftPV;
  String? rightPV;
  String? pvLevel;
}
final List<MemberModel> listOrganizeChart = [
  MemberModel(
      memberID: 123456,
      memberName: 'Somchai Namsakil',
      memberTeam: 'Left',
      memberLevel: 1,
      typeApplyLevel: 'MB',
      star: 'SS',
      currentMatching: 'SU',
      highestPosition: '-',
      applyDate: '2018-05-21',
      status: true,
      expireDate: '2021-05-21',
      upgradeExpireDate: '2021-05-21',
      maxPin: '-',
      lastPin: '01SU',
      newSponsor: '0',
      memToSup: '0',
      memToEx: '0',
      ownPV: '0',
      leftPV: '40',
      rightPV: '0',
      pvLevel: '-'),
  MemberModel(
      memberID: 123456,
      memberName: 'Somchai Namsakil',
      memberTeam: 'Left',
      memberLevel: 1,
      typeApplyLevel: 'MB',
      star: 'SS',
      currentMatching: 'SU',
      highestPosition: '-',
      status: false,
      applyDate: '2018-05-21',
      expireDate: '2021-05-21',
      upgradeExpireDate: '2021-05-21',
      maxPin: '-',
      lastPin: '01SU',
      newSponsor: '0',
      memToSup: '0',
      memToEx: '0',
      ownPV: '0',
      leftPV: '40',
      rightPV: '0',
      pvLevel: '-'),
  MemberModel(
      memberID: 123456,
      memberName: 'Somchai Namsakil',
      memberTeam: 'Left',
      memberLevel: 1,
      typeApplyLevel: 'MB',
      star: 'SS',
      currentMatching: 'SU',
      highestPosition: '-',
      status: false,
      applyDate: '2018-05-21',
      expireDate: '2021-05-21',
      upgradeExpireDate: '2021-05-21',
      maxPin: '-',
      lastPin: '01SU',
      newSponsor: '0',
      memToSup: '0',
      memToEx: '0',
      ownPV: '0',
      leftPV: '40',
      rightPV: '0',
      pvLevel: '-'),
  MemberModel(
      memberID: 123456,
      memberName: 'Somchai Namsakil',
      memberTeam: 'Left',
      memberLevel: 1,
      typeApplyLevel: 'MB',
      star: 'SS',
      currentMatching: 'SU',
      highestPosition: '-',
      status: true,
      applyDate: '2018-05-21',
      expireDate: '2021-05-21',
      upgradeExpireDate: '2021-05-21',
      maxPin: '-',
      lastPin: '01SU',
      newSponsor: '0',
      memToSup: '0',
      memToEx: '0',
      ownPV: '0',
      leftPV: '40',
      rightPV: '0',
      pvLevel: '-'),
  MemberModel(
      memberID: 123456,
      memberName: 'Somchai Namsakil',
      memberTeam: 'Left',
      memberLevel: 1,
      typeApplyLevel: 'MB',
      star: 'SS',
      currentMatching: 'SU',
      highestPosition: '-',
      applyDate: '2018-05-21',
      expireDate: '2021-05-21',
      status: true,
      upgradeExpireDate: '2021-05-21',
      maxPin: '-',
      lastPin: '01SU',
      newSponsor: '0',
      memToSup: '0',
      memToEx: '0',
      ownPV: '0',
      leftPV: '40',
      rightPV: '0',
      pvLevel: '-'),
];
final List<MemberModel> listSponsorChart = [
  MemberModel(
    memberID: 1,
    memberName: 'SomchaiNamsakil',
    memberTeam: 'Left',
    memberLevel: 1,
    typeApplyLevel: 'MB',
    star: 'SS',
    currentMatching: 'SU',
    highestPosition: '-',
  ),
  MemberModel(
    memberID: 1,
    memberName: 'SomchaiNamsakil',
    memberTeam: 'Left',
    memberLevel: 1,
    typeApplyLevel: 'MB',
    star: 'SS',
    currentMatching: 'SU',
    highestPosition: '-',
  ),
  MemberModel(
    memberID: 1,
    memberName: 'SomchaiNamsakil',
    memberTeam: 'Left',
    memberLevel: 1,
    typeApplyLevel: 'MB',
    star: 'SS',
    currentMatching: 'SU',
    highestPosition: '-',
  ),
  MemberModel(
    memberID: 1,
    memberName: 'SomchaiNamsakil',
    memberTeam: 'Left',
    memberLevel: 1,
    typeApplyLevel: 'MB',
    star: 'SS',
    currentMatching: 'SU',
    highestPosition: '-',
  ),
  MemberModel(
    memberID: 1,
    memberName: 'SomchaiNamsakil',
    memberTeam: 'Left',
    memberLevel: 1,
    typeApplyLevel: 'MB',
    star: 'SS',
    currentMatching: 'SU',
    highestPosition: '-',
  ),
  MemberModel(
    memberID: 1,
    memberName: 'SomchaiNamsakil',
    memberTeam: 'Left',
    memberLevel: 1,
    typeApplyLevel: 'MB',
    star: 'SS',
    currentMatching: 'SU',
    highestPosition: '-',
  ),
  MemberModel(
    memberID: 1,
    memberName: 'SomchaiNamsakil',
    memberTeam: 'Left',
    memberLevel: 1,
    typeApplyLevel: 'MB',
    star: 'SS',
    currentMatching: 'SU',
    highestPosition: '-',
  ),
  MemberModel(
    memberID: 1,
    memberName: 'SomchaiNamsakil',
    memberTeam: 'Left',
    memberLevel: 1,
    typeApplyLevel: 'MB',
    star: 'SS',
    currentMatching: 'SU',
    highestPosition: '-',
  ),
  MemberModel(
    memberID: 1,
    memberName: 'SomchaiNamsakil',
    memberTeam: 'Left',
    memberLevel: 1,
    typeApplyLevel: 'MB',
    star: 'SS',
    currentMatching: 'SU',
    highestPosition: '-',
  ),
  MemberModel(
    memberID: 1,
    memberName: 'SomchaiNamsakil',
    memberTeam: 'Left',
    memberLevel: 1,
    typeApplyLevel: 'MB',
    star: 'SS',
    currentMatching: 'SU',
    highestPosition: '-',
  ),
  MemberModel(
    memberID: 1,
    memberName: 'SomchaiNamsakil',
    memberTeam: 'Left',
    memberLevel: 1,
    typeApplyLevel: 'MB',
    star: 'SS',
    currentMatching: 'SU',
    highestPosition: '-',
  ),
];
