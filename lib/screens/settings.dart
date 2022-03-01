import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/components/radio_group/radio_group.dart';
import 'package:untitled1/components/gender_widget/gender_widget.dart';
import 'package:untitled1/consts.dart';
import 'package:untitled1/providers/settings_provider/setting_provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final TextEditingController _nameController = TextEditingController();
  bool init = true;

  @override
  void didChangeDependencies() {
    if (init) {
      _nameController.text = Provider.of<SettingsProvider>(context).model.name;
      init = false;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    void onRadioGroupItemTap(preference) {
      if (settingsProvider.model.pickedPreferences != null) {
        if (settingsProvider.model.pickedPreferences!.contains(preference)) {
          settingsProvider.deletePreference(preference);
        } else {
          settingsProvider.addPreference(preference);
        }
      }
    }

    onSexItemClick(Gender gender) {
      settingsProvider.setGender(gender);
    }

    void _onNameChanged(String name) {
      settingsProvider.setName(name);
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  onChanged: _onNameChanged,
                  controller: _nameController,
                  decoration: const InputDecoration(
                      hintText: 'Your Name',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                      border: InputBorder.none),
                ),
              ),
              const SizedBox(height: 20),
              RadioGroup(
                pickedPreferences:
                    settingsProvider.model.pickedPreferences ?? [],
                onItemTap: onRadioGroupItemTap,
              ),
              const SizedBox(height: 20),
              GenderWidget(
                  gender: settingsProvider.model.gender,
                  onItemClick: onSexItemClick)
            ],
          ),
        ),
      ),
    );
  }
}
