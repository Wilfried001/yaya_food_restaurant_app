import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app_yaya_food/view/screens/SplashScreen.dart';
import 'package:restaurant_app_yaya_food/view/screens/first-page.dart';
import 'package:restaurant_app_yaya_food/view/widgets/splash.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.blue,
      ),
      home: const SplashWidget(
        nextPage: FirstPage(),
        child: SplashScreen(),
      ),
    );
  }
}
