import 'package:flutter/widgets.dart';

class User {
  int? _userid;
  late String _firstname;
  late String _lastname;
  late String _email;
  late String _password;
  late String _createdTime;

  User(this._userid, this._firstname, this._lastname, this._email, this._password,this._createdTime);

  User.fromMap(dynamic obj) {
    this._userid = obj['userid'];
    this._firstname = obj['firstname'];
    this._lastname = obj['lastname'];
    this._email = obj['email'];
    this._password = obj['password'];
    this._createdTime = obj['createdTime'];
  }

  int? get userid => _userid;
  String get firstname => _firstname;
  String get lastname => _lastname;
  String get email => _email;
  String get password => _password;
  String get createdTime => _createdTime;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["userid"] = _userid;
    map["firstname"] = _firstname;
    map["lastname"] = _lastname;
    map["email"] = _email;
    map["password"] = _password;
    map["createdTime"] = _createdTime;
    return map;
  }
}