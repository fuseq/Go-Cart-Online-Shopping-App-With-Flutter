import 'package:e_commerce/widgets/rounded_icon_button.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';
import 'details_color_dot.dart';
class ColorDots extends StatelessWidget {
  const ColorDots({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(children: [
            ...List.generate(
                product.colorStrings.length,
                (index) => ColorDot(
                      colorString: product.colorStrings[index],
                      isSelected: index == 0 ? true : false,
                    )),
            Spacer(),
            RoundedIconButton(iconData: Icons.remove, press: () {}),
            const SizedBox(width: 15),
            RoundedIconButton(iconData: Icons.add, press: () {}),
          ]),
        ],
      ),
    );
  }
}