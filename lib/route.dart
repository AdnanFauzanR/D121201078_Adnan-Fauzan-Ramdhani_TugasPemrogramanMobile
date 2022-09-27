import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'profile_page.dart';

const String profilePage = 'profile';

void login() {}

Route<dynamic> controller(RouteSettings settings) {
  switch(settings.name) {
    case profilePage:
      return MaterialPageRoute(builder: (context) => MyProfilePage(title: 'Tugas Pemrograman Mobile'));
  }
}