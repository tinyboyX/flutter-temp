class UserModel {
  UserModel({
    this.avatar,
    this.fullName,
    this.isVerify,
    this.scmBusinessID,
    this.expiredDate,
    this.joinDate,
    this.gender,
    this.dayOfBirth,
    this.email,
    this.phoneNumber,
    this.citizenship,
    this.verifyIDCardPhoto,
    this.verifyBeneficiaryIDCardPhoto,
    this.verifyBookBankPhoto,
    this.verifyMarriageOrRelationshipCertificate,
    this.connectFacebook,
  });

  String? avatar;
  String? fullName;
  String? scmBusinessID;
  bool? isVerify;
  DateTime? joinDate;
  DateTime? expiredDate;
  String? gender;
  String? dayOfBirth;
  String? email;
  String? phoneNumber;
  String? citizenship;
  bool? verifyIDCardPhoto;
  bool? verifyBeneficiaryIDCardPhoto;
  bool? verifyBookBankPhoto;
  bool? verifyMarriageOrRelationshipCertificate;
  bool? connectFacebook;
}
UserModel getTempUser(){
  return UserModel(
    avatar: 'avatar',
    fullName: 'Somchai Namsakul',
    isVerify: true,
    scmBusinessID: '123456',
    joinDate: DateTime.now(),
    expiredDate: DateTime.utc(1989, 11, 9),
    gender: 'Male',
    dayOfBirth: '20-05-1975',
    email: 'somchai.namsakul@gmail.com',
    phoneNumber: '+66(0)93-976-2212',
    citizenship: 'Thai',
    verifyBeneficiaryIDCardPhoto: true,
    verifyBookBankPhoto: true,
    verifyIDCardPhoto: true,
    verifyMarriageOrRelationshipCertificate: true,
    connectFacebook: false,
  );
}