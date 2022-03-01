enum Preferences {
  dogs,
  cats,
  snakes,
  parrots,
}

extension PreferencesName on Preferences {
  String get name {
    switch (this) {
      case Preferences.dogs:
        return 'Dogs';
      case Preferences.cats:
        return 'Cats';
      case Preferences.snakes:
        return 'Snakes';
      case Preferences.parrots:
        return 'Parrots';
    }
  }
}

enum Gender {
  male,
  female,
  noGender,
}

extension GenderName on Gender {
  String get name {
    switch (this) {
      case Gender.male:
        return 'Male';
      case Gender.female:
        return 'Female';
      case Gender.noGender:
        return 'No Gender';
    }
  }
}
