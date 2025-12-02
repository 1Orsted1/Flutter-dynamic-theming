import 'package:dynamic_theme_app/logic/language_pref.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageSettings extends ChangeNotifier {
  static StorageSettings? _instance;

  StorageSettings._();

  static StorageSettings get instance => _instance ??= StorageSettings._();

  final themeName = "isThemeLight";
  final languagePref = "languagePref";
  SharedPreferences? ss;

  void setThemeMode() {
    if (getThemeMode() == ThemeMode.dark) {
      setThemePreference(isLight: true);
    } else {
      setThemePreference(isLight: false);
    }
    notifyListeners();
  }

  Future<void> initializeSettings() async {
    ss = await getInstance();
  }

  Future<SharedPreferences> getInstance() async {
    return await SharedPreferences.getInstance();
  }

  void setThemePreference({required bool isLight}) {
    ss?.setBool(themeName, isLight);
  }

  bool isThemeLight([String? name]) {
    return ss?.getBool(name ?? themeName) ?? false;
  }

  ThemeMode getThemeMode() {
    final isThemeLight = ss?.getBool(themeName) ?? false;
    return isThemeLight ? ThemeMode.light : ThemeMode.dark;
  }

  String getFontName() {
    final isThemeLight = ss?.getBool(themeName) ?? false;
    return isThemeLight ? "Manrope" : "Cormorant_Garamond";
  }

  String getLanguagePref() {
    final lang = ss?.getString(languagePref) ?? LanguagePref.en.name;
    return lang;
  }

  void setLanguagePref(LanguagePref preference) {
    ss?.setString(languagePref, preference.name);
    notifyListeners();
  }
}
