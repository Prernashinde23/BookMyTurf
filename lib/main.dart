import 'package:bookmyturf/view/AuthScreens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookMyTurf());
}


class BookMyTurf extends StatelessWidget {
  const BookMyTurf({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}