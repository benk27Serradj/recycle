import 'package:flutter/material.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer.withOpacity(1),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.gray30001,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray30001,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 16,
          fontFamily: 'Alata',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray60001,
          fontSize: 14,
          fontFamily: 'Alata',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 12,
          fontFamily: 'Alata',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 48,
          fontFamily: 'Alata',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 26,
          fontFamily: 'Alata',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 24,
          fontFamily: 'Alata',
          fontWeight: FontWeight.w400,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 20,
          fontFamily: 'Alata',
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          color: appTheme.indigoA200,
          fontSize: 14,
          fontFamily: 'HKGrotesk',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF53B175),
    primaryContainer: Color(0XFFD40707),
    secondaryContainer: Color(0XFFB1B1B1),

    // Error colors
    errorContainer: Color(0X26D73B77),
    onError: Color(0XB253B175),
    onErrorContainer: Color(0X000D1727),

    // On colors(text colors)
    onPrimary: Color(0XFF181725),
    onPrimaryContainer: Color(0X89FFFFFF),
    onSecondaryContainer: Color(0XFF181B19),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amberA100 => Color(0XFFFEE379);

  // Black
  Color get black900 => Color(0XFF030303);
  Color get black90001 => Color(0XFF000000);

  // Blue
  Color get blue100 => Color(0XFFB7DFF5);
  Color get blueA200 => Color(0XFF5383EC);

  // BlueGray
  Color get blueGray400 => Color(0XFF8B91A0);
  Color get blueGray50 => Color(0XFFF1F2F2);
  Color get blueGray800 => Color(0XFF334355);

  // DeepOrange
  Color get deepOrange200 => Color(0XFFF7A593);
  Color get deepOrangeA200 => Color(0XFFF3603F);
  Color get green => Color(0XFF53B175);

  // DeepPurple
  Color get deepPurpleA20026 => Color(0X26836AF6);

  // Gray
  Color get gray100 => Color(0XFFF2F3F2);
  Color get gray200 => Color(0XFFF0F0F0);
  Color get gray300 => Color(0XFFE0E1E7);
  Color get gray30001 => Color(0XFFE2E2E2);
  Color get gray400 => Color(0XFFB3B3B3);
  Color get gray40001 => Color(0XFFC2C2C2);
  Color get gray50 => Color(0XFFFCFCFC);
  Color get gray600 => Color(0XFF848484);
  Color get gray60001 => Color(0XFF7C7C7C);
  Color get gray60002 => Color(0XFF828282);
  Color get gray800 => Color(0XFF3D413F);
  Color get gray80001 => Color(0XFF3E423F);
  Color get gray80002 => Color(0XFF4C4E4D);

  // Green
  Color get green400 => Color(0XFF39CD74);
  Color get green200 => Color(0XFFC4F1C4);

  // Indigo
  Color get indigo500 => Color(0XFF4A66AC);
  Color get indigoA200 => Color(0XFF5468FF);

  // Indigof
  Color get indigo507f => Color(0X7FE6EAF3);

  // Orange
  Color get orangeA200 => Color(0XFFF8A44C);

  // Purple
  Color get purple100 => Color(0XFFD3B0E0);

  // Red
  Color get red700 => Color(0XFFCD3939);

  // White
  Color get whiteA700 => Color(0XFFFFF9FF);

  // WhiteAc
  Color get whiteA7008c => Color(0X8CFEFEFE);
  Color get whiteA70001 => Color(0XFFFFFFFF);

  // Yellow
  Color get yellow200 => Color(0XFFFDE598);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();