import 'package:flutter/material.dart';
import 'package:todo_app/common/app_theme.dart';
import 'package:todo_app/common/route_manger.dart';
import 'package:todo_app/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     routes: {
      RouteManger.homeScreenRoute:(_)=> HomeScreen(),
     },
     initialRoute: RouteManger.homeScreenRoute,
     theme: AppTheme.lightTheme,
     themeMode: ThemeMode.light,
    );
  }
}