import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "../screens/login.dart";

// Custom App Bar that takes in title based on the screen it is being rendered in.
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? appBarTitle;
  const CustomAppBar({super.key, this.appBarTitle});
  @override
  Size get preferredSize => Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF6A234F),
      leading: const BackButton(
        // onPressed: () {
        //   Navigator.pushNamed(context, '/login');
        // },
        // onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>const Login()));},
        color: Colors.white,
      ),
      title: Text(
        appBarTitle ?? "Default Title",
        style: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
      ),
      actions: <Widget>[
        Container(
            // padding: EdgesInsets.only(right: 16),
            margin: EdgeInsets.only(right: 16),
            child: GestureDetector(
                onTap: () {}, child: Image.asset('assets/bell_icon.png'))),
        Container(
          // margin: EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {},
            child: Image.asset('assets/search-icon.png'),
          ),
        )
      ],
    );
  }
}
