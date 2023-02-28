import "package:flutter/material.dart";

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.black,
      selectedItemColor: Color(0xffDF7900),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month,
              color: Color(0xFF262525),
            ),
            label: 'Booking'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.confirmation_num,
              color: Color(0xFF262525),
            ),
            label: 'Earning'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFF262525),
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
              color: Color(0xFF262525),
            ),
            label: 'Customers'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.fireplace,
              color: Color(0xFF262525),
            ),
            label: 'Create Puja')
      ],
    );
  }
}
