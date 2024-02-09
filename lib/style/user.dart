import 'package:my_project/style/user_name.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
  });
}

class CustomCallLog {
  final String callerName;

  final String phoneNumber;

  final String callDuration;

  final DateTime timestamp;

  CustomCallLog({
    required this.callerName,
    required this.phoneNumber,
    required this.callDuration,
    required this.timestamp,
  });
}
