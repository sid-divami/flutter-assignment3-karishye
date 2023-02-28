import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class ExistingCustomerCard extends StatelessWidget {
  final String? customerTitle;
  final String? customerLocation;
  final bool? isSelected;
  const ExistingCustomerCard(
      {super.key, this.customerTitle, this.customerLocation, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Wrap(
              spacing: 9,
              children: [
                Image.asset(
                  'assets/existing_customer.png',
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(customerTitle ?? "customer_name",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500))),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 12,
                          color: Color(0xff50555c),
                        ),
                        Text(customerLocation ?? "customer_location",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 13, color: Color(0xff50555c))))
                      ],
                    )
                  ],
                )
              ],
            ),
            Checkbox(
              value: isSelected,
              onChanged: (bool? value) {},
              shape: CircleBorder(),
            )
          ]),
    );
  }
}
