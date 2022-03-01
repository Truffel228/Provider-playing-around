import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/providers/settings_provider/setting_provider.dart';
import 'package:untitled1/routes.dart' as routes;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Navigator.pushNamed(context, routes.settings),
              child: Text('Settings'),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, routes.profile),
              child: Text('Profile'),
            )
          ],
        ),
      ),
    );
  }
}
