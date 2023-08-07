import 'package:flutter/material.dart';

import '../utils/colors.dart';
class ColorDot extends StatelessWidget {
  const ColorDot({
    required this.colorString,
    this.isSelected = false,
  });

  final String colorString;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    Color color = hexToColor(
        colorString); // String rengi uygun renk tipine dönüştürüyoruz.

    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? kOrangeColor : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
       
      ),
    );
  }

  Color hexToColor(String hexString) {
    return Color(int.parse(hexString.substring(1, 7), radix: 16) + 0xFF000000);
  }
}