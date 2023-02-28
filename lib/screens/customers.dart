import 'package:assignment_3/widgets/background_overlay.dart';
import 'package:flutter/material.dart';
import '../widgets/customer.dart';
import '../widgets/app_bar.dart';
import "../widgets/bottom_nav_bar.dart";

class Customer extends StatelessWidget {
  const Customer({super.key});
  // const pujaText = Text('Create Puja',style: TextStyle(fontSize: ),);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: 'Schedule Puja'),
      body: Container(
        child: Stack(
          children: <Widget>[
            BackgroundOverlay(),
            Column(
              children: <Widget>[
                CustomerBox(
                  customerText: 'For New Customer',
                ),
                CustomerBox(
                  customerText: 'Existing Customer',
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
