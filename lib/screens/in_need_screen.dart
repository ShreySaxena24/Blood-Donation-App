import 'package:flutter/material.dart';

class InNeed extends StatelessWidget {
  const InNeed({Key? key}) : super(key: key);
  static const routeName = '/in-need';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('In need'),
      ),
      body: Center(
        child: Text(
            'Asks for the required blood group then shows the nearest centres with the available blood group'),
      ),
    );
  }
}
