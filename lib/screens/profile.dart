import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/components/profile_card.dart';
import 'package:untitled1/consts.dart';
import 'package:untitled1/providers/settings_provider/setting_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Scaffold(
      appBar: AppBar(),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text(settingsProvider.model.name),
            const SizedBox(height: 20),
            ProfileCard(
              content: Wrap(
                alignment: WrapAlignment.center,
                children: settingsProvider.model.pickedPreferences!
                    .map((pref) => Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 4),
                          child: Text(
                            pref.name,
                          ),
                        ))
                    .toList(),
              ),
              title: 'Your Preferences',
            ),
            const SizedBox(height: 20),
            ProfileCard(
              title: 'Your Gender',
              content: Text(settingsProvider.model.gender.name),
            ),
          ],
        ),
      ),
    );
  }
}
