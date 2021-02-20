import 'package:day_24/login.dart';
import 'package:day_24/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
    theme: AppTheme.light,
    darkTheme: AppTheme.dark,
    themeMode: ThemeMode.system,
    debugShowCheckedModeBanner: false,
  ));
}
