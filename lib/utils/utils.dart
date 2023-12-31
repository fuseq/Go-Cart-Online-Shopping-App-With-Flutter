import 'package:flutter/material.dart';

import 'package:e_commerce/utils/colors.dart';



const kTitleStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.5,
  color: Colors.white,
);
const kNormalStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w600,
  height: 1.3,
  color: Colors.black,
);

List<Widget> buildIndicators() {
  List<Widget> list = [];
  for (int i = 0; i < 4; i++) {
    list.add(i == 1 ? indicator(true) : indicator(false));
  }
  return list;
}

Widget indicator(bool isActive) {
  return AnimatedContainer(
    margin: const EdgeInsets.symmetric(horizontal: 8),
    duration: const Duration(milliseconds: 150),
    height: 8,
    width: isActive ? 30 : 8,
    decoration: BoxDecoration(color: isActive ? Color.fromRGBO(229, 146, 82, 1) : Colors.grey,
        borderRadius: BorderRadius.circular(30)),
  );
}
