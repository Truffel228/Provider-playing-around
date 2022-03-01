import 'package:flutter/cupertino.dart';
import 'package:untitled1/consts.dart';
import 'package:untitled1/models/settings_model/settings_model.dart';

class SettingsProvider extends ChangeNotifier {
  SettingsModel _settingsModel = SettingsModel(pickedPreferences: []);

  SettingsModel get model => _settingsModel;

  void deletePreference(Preferences preference) {
    _settingsModel.pickedPreferences!.remove(preference);

    // var list = _settingsModel.pickedPreferences;
    // list!.remove(preference);
    // _settingsModel.copyWith(pickedPreferences: list);

    notifyListeners();
  }

  void addPreference(Preferences preference) {
    _settingsModel.pickedPreferences!.add(preference);

    // var list = _settingsModel.pickedPreferences;
    // list!.add(preference);
    // _settingsModel = _settingsModel.copyWith(pickedPreferences: list);

    notifyListeners();
  }

  void setGender(Gender gender) {
    _settingsModel = _settingsModel.copyWith(gender: gender);
    notifyListeners();
  }

  void setName(String name) {
    _settingsModel = _settingsModel.copyWith(name: name);
    notifyListeners();
  }
}
