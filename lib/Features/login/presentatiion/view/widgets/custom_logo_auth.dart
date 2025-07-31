import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Image.asset(
        'assets/images/cup.png', // Replace with the URL of your image
        width: double.infinity,
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
