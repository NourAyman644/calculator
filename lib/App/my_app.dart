import 'package:flutter/material.dart';

import '../core/Theme/app_theme.dart';
import '../features/screens/calculator.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getDarkTheme(),
      home: Calculator(),
    );
  }
}
