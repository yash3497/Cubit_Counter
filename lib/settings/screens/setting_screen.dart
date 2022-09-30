import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/setting_cubit.dart';
import '../cubit/setting_state.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      //dark light mode switch tooglw
      body: BlocBuilder<SettingCubit, SettingState>(builder: (context, state) {
        return SwitchListTile(
          title: Text('${state.mode}'),
          value: state.isDark,
          onChanged: (value) {
            final cubit = context.read<SettingCubit>();
            cubit.toggleTheme();
          },
        );
      }),
    );
  }
}
