import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData _selectedTheme;

  late ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFFFFFFFF),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFFFEA00C),
      onPrimary: Color(0xFFFFFFFF),
      secondary: Color(0xFF50C878),
      onSecondary: Color(0xFFF5F5F5),
      tertiary: Color(0xFFFFFFFF),
      onTertiary: Color(0xFF000000),
      error: Color(0xFFDC4F42),
      onError: Color(0xFFFFFFFF),
      background: Color(0xFFF5F5F5),
      onBackground: Color(0xFFFFFFFF),
      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFFFFFFFF),
    ),
  );

  late ThemeData darkTheme = ThemeData(
    primaryColor: const Color(0xFF1C1E25),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFFEA00C),
      onPrimary: Color(0xFFFFFFFF),
      secondary: Color(0xFF50C878),
      onSecondary: Color(0xFF1C1E25),
      tertiary: Color(0xFF1F2129),
      onTertiary: Color(0xFFFFFFFF),
      error: Color(0xFFDC4F42),
      onError: Color(0xFF1C1E25),
      background: Color(0xFF23252E),
      onBackground: Color(0xFF1C1E25),
      surface: Color(0xFF1C1E25),
      onSurface: Color(0xFF1C1E25),
    ),
  );

  ThemeProvider({required bool isDarkMode}) {
    _selectedTheme = isDarkMode ? darkTheme : lightTheme;
  }

  void swapTheme() {
    _selectedTheme = _selectedTheme == darkTheme ? lightTheme : darkTheme;
    notifyListeners();
  }

  ThemeData get getTheme => _selectedTheme;
}
