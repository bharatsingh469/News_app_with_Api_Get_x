import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_get_x/Config/Theme.dart';
import 'package:news_app_get_x/Pages/Homepage/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: darkTheme,
      home: const Homepage(),
    );
  }
}
