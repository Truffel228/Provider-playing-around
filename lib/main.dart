import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/providers/settings_provider/setting_provider.dart';
import 'routes.dart' as routes;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => SettingsProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: routes.home,
        routes: routes.getRoutes(),
      ),
    );
  }
}
