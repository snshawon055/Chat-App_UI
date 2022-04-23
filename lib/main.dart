import 'package:flutter/material.dart';
import 'package:personal_chat_app/widgets/theme.dart';

import 'screen/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      home: WellComeScreen(),
    );
  }
}
