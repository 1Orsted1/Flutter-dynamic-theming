import 'package:dynamic_theme_app/app.dart';
import 'package:dynamic_theme_app/i18n/translations.dart';
import 'package:dynamic_theme_app/logic/storage_settings.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  await StorageSettings.instance.initializeSettings();
  runApp(TranslationProvider(child: App()));
}
