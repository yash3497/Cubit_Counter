import 'package:cubit_counter_app/home/cubit/counter_cubit.dart';
import 'package:cubit_counter_app/home/screens/homescreen.dart';
import 'package:cubit_counter_app/settings/cubit/setting_cubit.dart';
import 'package:cubit_counter_app/settings/cubit/setting_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CubitCounter(),
        ),
        BlocProvider(
          create: (context) => SettingCubit(),
        ),
      ],
      child: BlocBuilder<SettingCubit, SettingState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Cubit Counter',
            theme: state.themeData,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
