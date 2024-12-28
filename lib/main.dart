import 'package:bmi_calculator_flutter/constants/constants.dart';
import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: kAppBarThemeColor,
        ),
        scaffoldBackgroundColor: kAppScaffoldColor,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        useMaterial3: false,
      ),

      // WHEN WE WANT TO CHANGE A FEW THINGS BUT KEEP THE REST OF THE THEME INTACT
      //
      // theme: ThemeData.dark().copyWith(
      //   appBarTheme: AppBarTheme(
      //     backgroundColor: Color(0xFF0A0E21),
      //   ),
      //   scaffoldBackgroundColor: Color(0xFF0A0E21),
      // ),
      home: const MyHomePage(),

      // NOTE: IF YOU HAVE >= 4 SCREENS, THEN USE NAMED ROUTES LIKE BELOW
      //
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Screen0(),
      //   '/first': (context) => Screen1(),
      //   '/second': (context) => Screen2(),
      //   '/third': (context) => Screen3(),
      //   'fourth': (context) => Screen4(),
      // },
    );
  }
}
