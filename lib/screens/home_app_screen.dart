import 'package:flutter/material.dart';

class HomeAppScreen extends StatelessWidget {
  const HomeAppScreen({Key? key}) : super(key: key);
  static const routeName = '/home-app';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to the appointments screen!'),
      ),
      body: Center(
        child: Text('A form comes here!'),
      ),
    );
  }
}
