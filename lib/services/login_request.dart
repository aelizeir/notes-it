import 'dart:async';
import 'package:notesit/model/user.dart';
import 'package:notesit/data/CtrQuery/login_ctr.dart';

class LoginRequest {
  LoginCtr con = new LoginCtr();
  Future<User?> getLogin(String email, String password) {
    var result = con.getLogin(email,password);
    return result;
  }
}