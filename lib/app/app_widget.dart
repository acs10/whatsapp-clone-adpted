import 'package:clone_whattsapp/app/themes/color.dart';
import 'package:flutter/material.dart';
import 'controllers/theme_controller.dart';
import 'screens/home_screen.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: ThemeController.themeMode,
        builder: (_, themeMode, __) {
          return MaterialApp(
              themeMode: ThemeMode.light,
              darkTheme: ThemeData.dark().copyWith(
                  textTheme: TextTheme(
                      bodyText2: TextStyle(color: Colors.cyanAccent))),
              theme: ThemeData(
                primaryColor: kPrimaryColor,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              debugShowCheckedModeBanner: false,
              home: HomeScreen());
        });
  }
}
