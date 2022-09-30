import 'package:cubit_counter_app/settings/cubit/setting_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit()
      : super(SettingState(
            themeData: ThemeData.light(), mode: 'light Mode', isDark: false));

  void toggleTheme() {
    if (state.themeData == ThemeData.light()) {
      emit(SettingState(
          themeData: ThemeData.dark(), mode: 'Dark Mode', isDark: true));
    } else {
      emit(SettingState(
          themeData: ThemeData.light(), mode: 'light Mode', isDark: false));
    }
  }
}
