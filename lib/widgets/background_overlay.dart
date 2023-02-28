import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BackgroundOverlay extends StatelessWidget {
  const BackgroundOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child:
          Image.asset('assets/temple.png', alignment: Alignment.bottomCenter),
    );
  }
}
