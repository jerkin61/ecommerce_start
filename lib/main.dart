import 'dart:ui';

import 'package:ecommerce_start/config/app_router.dart';
import 'package:ecommerce_start/widget/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'config/theme.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kris | Ever ',
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
      home: HomeScreen(),
    );
  }
}
