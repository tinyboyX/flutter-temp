import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String userName;
  final String userPhone;

  UserEntity({
    required this.userName,
    required this.userPhone,
  });

  @override
  List<Object> get props => [
        userName,
        userPhone,
      ];
}
