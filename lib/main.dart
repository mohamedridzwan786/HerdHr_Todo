import 'package:flutter/material.dart';
import 'package:herdhr/Views/login.screen.dart';
import 'package:herdhr/Themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
  ValueNotifier(ThemeMode.light);

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            // Remove the debug banner
              debugShowCheckedModeBanner: false,
              title: 'HerdHR Todo App',
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
          themeMode: currentMode,
          home: LoginScreen()
          );
        });
  }
}
