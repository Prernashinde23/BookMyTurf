import 'package:flutter/material.dart';

bgWidget({child}) {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('image/bg.png'))),
    child: child,
  );
}
