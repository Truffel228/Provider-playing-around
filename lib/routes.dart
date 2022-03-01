import 'package:flutter/material.dart';
import 'package:untitled1/screens/home.dart';
import 'package:untitled1/screens/profile.dart';
import 'package:untitled1/screens/settings.dart';

const String home = '/home';
const String settings = '/settings';
const String profile = '/profile';

Map<String, WidgetBuilder> getRoutes() => {
  home:(BuildContext context) => HomeScreen(),
  settings: (BuildContext context) => SettingsScreen(),
  profile: (BuildContext context) => ProfileScreen(),
};