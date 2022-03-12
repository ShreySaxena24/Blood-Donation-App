import 'package:flutter/material.dart';

class CentresScreen extends StatelessWidget {
  const CentresScreen({Key? key}) : super(key: key);
  static const routeName = '/centres';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Centres Near you'),
      ),
      body: Center(
        child: Text('Shows info about nearby hospitals.'),
      ),
    );
  }
}
