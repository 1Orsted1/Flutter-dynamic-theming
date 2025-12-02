import 'package:dynamic_theme_app/theme/extensions/hero_text_style.dart';
import 'package:dynamic_theme_app/theme/extensions/hero_theme.dart';
import 'package:dynamic_theme_app/theme/i_personalized_theme.dart';
import 'package:dynamic_theme_app/theme/utils.dart';
import 'package:flutter/material.dart';

class ThemeDark implements IPersonalizedTheme {
  ThemeDark() {
    heroTextStyle = getHeroStyle();
  }

  late HeroTextStyle heroTextStyle;

  final colorScheme = ColorScheme.dark(
    // Primary: The warm orange/amber color used for buttons and accents
    primary: Color(0xFFFF9F43),
    onPrimary: Color(0xFF1A1410),

    // Primary Container: Darker orange for subtle highlights
    primaryContainer: Color(0xFF6B4A28),
    onPrimaryContainer: Color(0xFFFFDDB8),

    // Secondary: The rich brown/chocolate tones
    secondary: Color.fromARGB(255, 103, 65, 139),
    onSecondary: Color(0xFFFFFFFF),

    // Secondary Container
    secondaryContainer: Color(0xFF5C4230),
    onSecondaryContainer: Color(0xFFE5D3C3),

    // Tertiary: Accent green from vegetables/garnish
    tertiary: Color(0xFF7CAF6D),
    onTertiary: Color(0xFF1A2816),

    // Tertiary Container
    tertiaryContainer: Color(0xFF3A5432),
    onTertiaryContainer: Color(0xFFC8E5BE),

    // Error colors
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF690005),
    errorContainer: Color(0xFF93000A),
    onErrorContainer: Color(0xFFFFDAD6),

    // Background: Deep rich black with brown undertones
    surface: Color.fromARGB(255, 8, 4, 0),
    onSurface: Color(0xFFE8E1DC),

    // Surface variants
    surfaceContainerHighest: Color(0xFF3D342A),
    onSurfaceVariant: Color(0xFFCCC5BD),

    // Outline
    outline: Color(0xFF96897D),
    outlineVariant: Color(0xFF4D453B),

    // Others
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: Color(0xFFE8E1DC),
    onInverseSurface: Color(0xFF322F2B),
    inversePrimary: Color(0xFF855C2E),
  );

  @override
  ThemeData getTheme() {
    return ThemeData(
      fontFamily: "Cormorant_Garamond",
      colorScheme: colorScheme,
      textTheme: textStyles,
      extensions: [
        HeroTheme(
          background: Colors.red,
          textTitle: Colors.yellowAccent,
          textContent: Colors.white,
          borderColor: Colors.yellow,
          shadeColor: Colors.black54,
        ),
        heroTextStyle,
      ],
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: colorScheme.primary,
        titleTextStyle: textStyles.titleLarge?.copyWith(
          fontSize: 20,
          color: colorScheme.onSecondary,
        ),
        actionsIconTheme: IconThemeData(color: colorScheme.secondary),
      ),
      scaffoldBackgroundColor: colorScheme.surface,

      cardTheme: CardThemeData(
        color: colorScheme.primary,
        shadowColor: colorScheme.secondary,
        shape: RoundedRectangleBorder(
          //side: BorderSide(width: 2, color: colorScheme.secondary),
          borderRadius: BorderRadiusGeometry.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        elevation: 5.0,
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(colorScheme.secondary),
          foregroundColor: WidgetStateProperty.all(colorScheme.onSurface),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(width: 4, color: colorScheme.surface),
              borderRadius: BorderRadiusGeometry.only(
                topLeft: Radius.circular(16),
                bottomRight: Radius.elliptical(16, 8),
              ),
            ),
          ),
          //shadowColor: WidgetStateProperty.all(colorScheme.shadow),
        ),
      ),
    );
  }
}
