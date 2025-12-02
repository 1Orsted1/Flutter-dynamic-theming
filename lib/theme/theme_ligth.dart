import 'package:dynamic_theme_app/theme/extensions/hero_text_style.dart';
import 'package:dynamic_theme_app/theme/extensions/hero_theme.dart';
import 'package:dynamic_theme_app/theme/i_personalized_theme.dart';
import 'package:dynamic_theme_app/theme/utils.dart';
import 'package:flutter/material.dart';

class ThemeLigth implements IPersonalizedTheme {
  ThemeLigth() {
    heroTextStyle = getHeroStyle();
  }

  late HeroTextStyle heroTextStyle;

  final colorScheme = ColorScheme.light(
    // Primary: The vibrant mint/turquoise color used throughout
    primary: Color(0xFF4EECC8),
    onPrimary: Color(0xFF003830),

    // Primary Container: Lighter mint for cards and highlights
    primaryContainer: Color(0xFFB8F5E6),
    onPrimaryContainer: Color(0xFF002019),

    // Secondary: The lime/yellow-green accent
    secondary: Color(0xFFD4F57A),
    onSecondary: Color(0xFF3A4A2C),

    // Secondary Container
    secondaryContainer: Color(0xFFE8FAB8),
    onSecondaryContainer: Color(0xFF2A3A1C),

    // Tertiary: Navy/dark blue-gray from the cards
    tertiary: Color(0xFF3D4F5C),
    onTertiary: Color(0xFFFFFFFF),

    // Tertiary Container
    tertiaryContainer: Color(0xFFC1D7E0),
    onTertiaryContainer: Color(0xFF1A2730),

    // Error colors
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),

    // Background: Light cream/white
    surface: Color(0xFFFAFDFA),
    onSurface: Color(0xFF191C1B),

    // Surface variants
    surfaceContainerHighest: Color(0xFFDDE5E2),
    onSurfaceVariant: Color(0xFF414947),

    // Outline
    outline: Color(0xFF717977),
    outlineVariant: Color(0xFFC1C9C6),

    // Others
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: Color(0xFF2E3130),
    onInverseSurface: Color(0xFFF0F1EE),
    inversePrimary: Color(0xFF9BDBC7),
  );

  @override
  ThemeData getTheme() {
    return ThemeData(
      fontFamily: "Manrope",
      colorScheme: colorScheme,
      textTheme: textStyles,
      extensions: [
        HeroTheme(
          background: Colors.blueAccent,
          textTitle: Colors.green,
          textContent: Colors.white,
          borderColor: Colors.yellow,
          shadeColor: Colors.black54,
        ),
        heroTextStyle,
      ],

      appBarTheme: AppBarTheme(
        centerTitle: false,
        backgroundColor: colorScheme.secondary,
        titleTextStyle: textStyles.titleLarge?.copyWith(
          fontSize: 24,
          fontWeight: FontWeight.w300,
          color: colorScheme.onSecondary,
        ),
        actionsIconTheme: IconThemeData(color: colorScheme.onPrimary),
      ),

      scaffoldBackgroundColor: colorScheme.surface,
      cardTheme: CardThemeData(
        color: colorScheme.primary,
        shadowColor: colorScheme.secondary,
        shape: RoundedRectangleBorder(
          //side: BorderSide(width: 2, color: colorScheme.secondary),
          borderRadius: BorderRadiusGeometry.only(
            topLeft: Radius.elliptical(64, 8),
            topRight: Radius.elliptical(8, 64),
            bottomRight: Radius.elliptical(64, 8),
            bottomLeft: Radius.elliptical(8, 64),
          ),
        ),
        elevation: 5.0,
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        clipBehavior: Clip.antiAliasWithSaveLayer,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(colorScheme.secondary),
          foregroundColor: WidgetStateProperty.all(colorScheme.onSecondary),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(width: 4, color: colorScheme.onSecondary),
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
