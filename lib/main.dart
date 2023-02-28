import 'package:flutter/material.dart';
import './screens/customers.dart';
// import 'package:google_fonts/';
import './screens/existingCustomers.dart';
import './screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Assignment-3 Screens Implementation",
      home: const Customer(),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const Login(),
        '/customers': (context) => const Customer(),
        '/existingCustomers': (context) => const ExistingCustomers()
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
