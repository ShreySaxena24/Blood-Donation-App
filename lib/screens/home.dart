import 'package:blooddonation/screens/donate_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'in_need_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Icon(Icons.home_filled),
      //   title: Text('Home Screen'),
      //   flexibleSpace: Container(
      //     decoration: BoxDecoration(
      //       gradient: LinearGradient(colors: [Colors.red, Colors.white60]),
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Team \nSaviour',
                    textScaleFactor: 1,
                    style: TextStyle(
                        fontFamily: 'Craft',
                        color: Colors.red[700],
                        fontSize: 34)),
                // centerTitle: true,
                background: Image.asset(
                  'lib/assets/logo2.png',
                  fit: BoxFit.scaleDown,
                ),
                titlePadding: EdgeInsets.all(5),
              ),
              backgroundColor: Colors.transparent,
              leading: Icon(
                Icons.home,
                color: Colors.red[700],
              ),
              elevation: 5,
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                          colors: [Colors.red, Colors.orangeAccent])),
                  height: 280,
                  // width: 50,
                  margin: EdgeInsets.all(4),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(DonateScreen.routeName);
                          },
                          child: ClipRRect(
                            child: Image.network(
                              'https://healthmatters.nyp.org/wp-content/uploads/2020/01/Heart-Article-Hero-1200x500.gif',
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Donate',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                          colors: [Colors.red, Colors.orangeAccent])),
                  height: 280,
                  // width: 50,
                  margin: EdgeInsets.all(4),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(InNeed.routeName);
                          },
                          child: ClipRRect(
                            child: Image.network(
                              'https://i.imgur.com/tFrtnwS.gif',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'In Need',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                          colors: [Colors.red, Colors.orangeAccent])),
                  height: 280,
                  // width: 50,
                  margin: EdgeInsets.all(4),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            'https://img.etimg.com/thumb/msid-64701573,width-300,imgsize-47008,,resizemode-4,quality-100/.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        'Register',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 50,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
            ]))
          ],
        ),
      ),
    );
  }
}
