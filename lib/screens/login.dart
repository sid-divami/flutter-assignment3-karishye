import 'package:assignment_3/widgets/background_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            const BackgroundOverlay(),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Center(
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/customers');
                        },
                        child: const Text('Submit')),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
