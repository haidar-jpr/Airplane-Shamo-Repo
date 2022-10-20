import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String name;
  final String hobby;
  final int balance;

  const UserModel({
    required this.id,
    required this.email,
    required this.name,
    this.balance = 0,
    this.hobby = '',
  });

  @override
  List<Object?> get props => [id, email, name, hobby, balance];
}
