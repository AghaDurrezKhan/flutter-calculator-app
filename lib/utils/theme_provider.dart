import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData _selectedTheme;

  late ThemeData lightTheme = ThemeData(
    primaryColor: Colors.white,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFFFEA00C),
      onPrimary: Colors.white,
      secondary: Color(0xFF50C878),
      onSecondary: Colors.white,
      tertiary: Color(0xFF1F2129),
      onTertiary: Color(0xFF1F2129),
      error: Color(0xFFDC4F42),
      onError: Colors.white,
      background: Color(0xFF1C1E25),
      onBackground: Colors.white,
      surface: Colors.white,
      onSurface: Colors.white,
    ),
  );

  late ThemeData darkTheme = ThemeData(
    primaryColor: const Color(0xFF1C1E25),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFFEA00C),
      onPrimary: Color(0xFF1C1E25),
      secondary: Color(0xFF50C878),
      onSecondary: Color(0xFF1C1E25),
      tertiary: Color(0xFF1F2129),
      onTertiary: Color(0xFF1F2129),
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
