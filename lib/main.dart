import 'package:blooddonation/screens/centres_screen.dart';
import 'package:blooddonation/screens/donate_screen.dart';
import 'package:blooddonation/screens/home.dart';
import 'package:blooddonation/screens/home_app_screen.dart';
import 'package:blooddonation/screens/in_need_screen.dart';
import 'package:flutter/material.dart';

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
          primarySwatch: Colors.red,
        ),
        home: HomeScreen(),
        routes: {
          DonateScreen.routeName: (ctx) => DonateScreen(),
          HomeAppScreen.routeName: (ctx) => HomeAppScreen(),
          CentresScreen.routeName: (ctx) => CentresScreen(),
          InNeed.routeName: (ctx) => InNeed(),
        });
  }
}
