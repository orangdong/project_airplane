import 'package:equatable/equatable.dart';

class UserModel extends Equatable {

  final String id;
  final String name;
  final String email;
  final String hobby;
  final int balance;

  UserModel({
    required this.id, 
    required this.name, 
    required this.email, 
    this.hobby = '', 
    this.balance = 0
  });

  @override
  List<Object?> get props => [id,email,name,hobby,balance];
}