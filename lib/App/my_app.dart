import 'package:flutter/material.dart';

import '../core/Theme/app_theme.dart';
import '../core/cubit/calculator_cubit.dart';
import '../features/screens/calculator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CalculatorCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: getDarkTheme(),
        home: const Calculator(),
      ),
    );
  }
}
