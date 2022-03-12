import 'package:flutter/material.dart';

import 'centres_screen.dart';
import 'home_app_screen.dart';

class DonateScreen extends StatelessWidget {
  const DonateScreen({Key? key}) : super(key: key);
  static const routeName = '/donate';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Donate',
                    textScaleFactor: 1,
                    style: TextStyle(
                        fontFamily: 'Craft',
                        color: Colors.red[700],
                        fontSize: 34)),
                // centerTitle: true,
                background: Image.network(
                  'https://healthmatters.nyp.org/wp-content/uploads/2020/01/Heart-Article-Hero-1200x500.gif',
                  fit: BoxFit.cover,
                ),
                titlePadding: EdgeInsets.all(5),
              ),
              backgroundColor: Colors.transparent,
              elevation: 5,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
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
                      height: 300,
                      // width: 50,
                      margin: EdgeInsets.all(4),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(HomeAppScreen.routeName);
                              },
                              child: ClipRRect(
                                child: Image.network(
                                  'https://health.clevelandclinic.org/wp-content/uploads/sites/3/2020/04/covidBloodDonor-1213554544-770x553-1.jpg',
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Home Appointment',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 38,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                                    .pushNamed(CentresScreen.routeName);
                              },
                              child: ClipRRect(
                                child: Image.network(
                                  'https://previews.123rf.com/images/jwsc101/jwsc1011508/jwsc101150800069/44270045-blood-donor-blood-donation-centre.jpg',
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Visit a Nearby Centre',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 36,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
