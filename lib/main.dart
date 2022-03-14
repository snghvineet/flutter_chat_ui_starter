import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/helpers/color_data.dart';
import 'package:flutter_chat_ui_starter/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorData.primaryRed,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: ColorData.primaryRed,
          secondary: ColorData.yellowAccent,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
