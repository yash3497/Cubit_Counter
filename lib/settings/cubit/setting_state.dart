import 'package:flutter/material.dart';

class SettingState {
  final ThemeData themeData;
  final String mode;
  final bool isDark;

  SettingState(
      {required this.themeData, required this.mode, required this.isDark});
}
