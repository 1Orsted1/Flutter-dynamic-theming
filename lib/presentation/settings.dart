import 'package:dynamic_theme_app/i18n/translations.dart';
import 'package:dynamic_theme_app/logic/language_pref.dart';
import 'package:dynamic_theme_app/logic/storage_settings.dart';
import 'package:dynamic_theme_app/presentation/widgets/menu_item.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  late StorageSettings _storageSettings; // = StorageSettings.instance;

  void toggleThemeMode() async {
    setState(() {
      _storageSettings.setThemeMode();
    });
  }

  void changeLanguage() async {
    setState(() {
      final lang = _storageSettings.getLanguagePref();
      if (lang == LanguagePref.en.name) {
        _storageSettings.setLanguagePref(LanguagePref.es);
      } else {
        _storageSettings.setLanguagePref(LanguagePref.en);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _storageSettings = StorageSettings.instance;
  }

  @override
  Widget build(BuildContext context) {
    final isThemeLight = StorageSettings.instance.isThemeLight();
    final t = context.t;
    return Scaffold(
      appBar: AppBar(title: Text(t.settings)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            MenuItem(
              title: t.theme,
              iconD: isThemeLight ? Icons.sunny : Icons.nightlight,
              onPressed: toggleThemeMode,
            ),
            MenuItem(
              title: t.langLabel,
              content: Text(t.lang),
              onPressed: changeLanguage,
            ),
          ],
        ),
      ),
    );
  }
}
