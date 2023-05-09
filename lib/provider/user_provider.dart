import 'package:flutter/material.dart';
import 'package:twitch_clone/models/user.dart';

class UserProvider extends ChangeNotifier {
  UserModel _user = UserModel(
    email: '',
    uid: '',
    username: '',
  );

  UserModel get user => _user;

  setUser(UserModel user) {
    _user = user;
    notifyListeners();
  }
}
