import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerBox extends StatelessWidget {
  final String? customerText;
  const CustomerBox({super.key, this.customerText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/existingCustomers');
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: Colors.grey, width: 1, style: BorderStyle.solid)),
        padding: EdgeInsets.all(14),
        margin: EdgeInsets.all(15),
        child: Row(
          children: [
            Image.asset(
              'assets/pujari.png',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(customerText ?? "Default Customer Text",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Color(0xff6a234f),
                          fontSize: 24,
                          fontWeight: FontWeight.w600))),
            )
          ],
        ),
      ),
    );
  }
}
