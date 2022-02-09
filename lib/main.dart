import 'package:flutter/material.dart';
import 'package:sign_form_ui/core/style.dart';

import 'app/pages/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontFamily: "OpenSans",
              fontSize: 36,
              color: AppStyles.colorPrimary,
              fontWeight: FontWeight.bold),
          headline2: TextStyle(
              fontFamily: "OpenSans",
              fontSize: 24,
              color: AppStyles.colorPrimary,
              fontWeight: FontWeight.bold),
          headline3: TextStyle(
              fontFamily: "OpenSans",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.red),
          headline4: TextStyle(
              fontFamily: "OpenSans",
              fontSize: 12,
              fontWeight: FontWeight.bold),
          headline5: TextStyle(
              fontFamily: "OpenSans",
              fontSize: 12,
              color: AppStyles.colorPrimary,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline),
        ),
      ),
      home: const SignUpPage(),
    );
  }
}
