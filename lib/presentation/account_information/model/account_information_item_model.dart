import 'package:clean_architechture/data/main/model/user_model.dart';
import 'package:flutter/material.dart';

class AccountInformationItemModel {
  AccountInformationItemModel({this.title, this.information, this.isVerified, this.isConnectFacebook, this.onTap});

  String? title;
  String? information;
  bool? isVerified;
  bool? isConnectFacebook;
  VoidCallback? onTap;
}

final user = getTempUser();
final List<AccountInformationItemModel> listAccountInformation = [
  AccountInformationItemModel(
    title: 'Full name',
    information: user.fullName,
    isVerified: false,
  ),
  AccountInformationItemModel(
    title: 'Gender',
    information: user.gender,
    isVerified: false,
  ),
  AccountInformationItemModel(
    title: 'Date of Birth',
    information: user.dayOfBirth,
    isVerified: false,
  ),
  AccountInformationItemModel(
    title: 'Email',
    information: user.email,
    isVerified: false,
  ),
  AccountInformationItemModel(
    title: 'Phone number',
    information: user.phoneNumber,
    isVerified: false,
  ),
  AccountInformationItemModel(
    title: 'Citizenship',
    information: user.citizenship,
    isVerified: false,
  ),
  AccountInformationItemModel(
    title: 'ID Card Photo',
    information: user.verifyIDCardPhoto! ? 'Verified' : 'Not Verified',
    isVerified: user.verifyIDCardPhoto!,
  ),
  AccountInformationItemModel(
    title: 'Beneficiary Person ID Card Photo',
    information: user.verifyBeneficiaryIDCardPhoto! ? 'Verified' : 'Not Verified',
    isVerified: user.verifyBeneficiaryIDCardPhoto!,
  ),
  AccountInformationItemModel(
    title: 'Book Bank Photo',
    information: user.verifyBookBankPhoto! ? 'Verified' : 'Not Verified',
    isVerified: user.verifyBookBankPhoto!,
  ),
  AccountInformationItemModel(
    title: 'Marriage / Relationship Certificate',
    information: user.verifyMarriageOrRelationshipCertificate! ? 'Verified' : 'Not Verified',
    isVerified: user.verifyMarriageOrRelationshipCertificate!,
  ),
  AccountInformationItemModel(
    title: 'Connect Facebook',
    isConnectFacebook: user.connectFacebook,
  ),
];
