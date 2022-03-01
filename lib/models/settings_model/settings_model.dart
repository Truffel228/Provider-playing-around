import 'package:untitled1/consts.dart';

class SettingsModel {
  SettingsModel(
      {this.gender = Gender.male,
      this.name = '',
      this.height = 0,
      this.pickedPreferences});
  final Gender gender;
  final String name;
  final double height;
  final List<Preferences>? pickedPreferences;

  SettingsModel copyWith(
          {Gender? gender,
          String? name,
          double? height,
          List<Preferences>? pickedPreferences}) =>
      SettingsModel(
        gender: gender ?? this.gender,
        name: name ?? this.name,
        height: height ?? this.height,
        pickedPreferences: pickedPreferences ?? this.pickedPreferences,
      );
}
