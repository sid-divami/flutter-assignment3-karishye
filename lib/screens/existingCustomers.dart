import 'package:assignment_3/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import "../widgets/bottom_nav_bar.dart";
import "../widgets/existing_customer_card.dart";
import "../widgets/background_overlay.dart";

class ExistingCustomers extends StatelessWidget {
  const ExistingCustomers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(appBarTitle: 'Existing Customers'),
      body: Container(
        child: Stack(
          children: <Widget>[
            BackgroundOverlay(),
            Column(
              children: <Widget>[
                ExistingCustomerCard(
                  customerTitle: 'Ram Bhai',
                  customerLocation: "Gavhi",
                  isSelected: true,
                ),
                ExistingCustomerCard(
                  customerTitle: 'Ram Bhai',
                  customerLocation: "Gavhi",
                  isSelected: false,
                ),
                ExistingCustomerCard(
                  customerTitle: 'Ram Bhai',
                  customerLocation: "Gavhi",
                  isSelected: false,
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
