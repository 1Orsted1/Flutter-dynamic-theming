import 'package:dynamic_theme_app/i18n/translations.dart';
import 'package:dynamic_theme_app/theme/theme_dark.dart';
import 'package:dynamic_theme_app/theme/theme_ligth.dart';
import 'package:dynamic_theme_app/presentation/home.dart';
import 'package:dynamic_theme_app/logic/storage_settings.dart';
import 'package:flutter/material.dart';

//Todo:
// add settings page/tab
// uploading this repo to my GitHub (create a new one??)

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late StorageSettings _storageSettings; // = StorageSettings.instance;

  void setLocales(String locale) {
    if (locale == AppLocale.en.name) {
      LocaleSettings.setLocale(AppLocale.en);
    } else {
      LocaleSettings.setLocale(AppLocale.es);
    }
  }

  @override
  void initState() {
    super.initState();
    _storageSettings = StorageSettings.instance;
  }

  @override
  void dispose() {
    _storageSettings.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _storageSettings,
      builder: (context, child) {
        final locale = _storageSettings.getLanguagePref();
        setLocales(locale);
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeLigth().getTheme(),
          darkTheme: ThemeDark().getTheme(),
          themeMode: _storageSettings.getThemeMode(),
          home: Home(),
        );
      },
    );
  }
}
