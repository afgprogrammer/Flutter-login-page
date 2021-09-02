import 'package:day_24/login.dart';
import 'package:day_24/themes/app_theme.dart';
import 'package:day_24/themes/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child) {
          return MaterialApp(
            home: LoginPage(),
            theme: themeNotifier.isDark ? AppTheme.dark : AppTheme.light,
            debugShowCheckedModeBanner: false,
          );
        }
      )
    )
  );
}
