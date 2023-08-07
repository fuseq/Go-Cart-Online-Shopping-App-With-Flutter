import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/widgets/details_product_description.dart';
import 'package:e_commerce/widgets/details_top_rounded_container.dart';
import 'package:e_commerce/widgets/rounded_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data/data.dart';
import 'details_color_dots.dart';
import 'details_product_images.dart';

class DetailsBody extends StatelessWidget {
  final Product product;
  const DetailsBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizedBoxSize = 238 / 360 * MediaQuery.of(context).size.width;
    double containerSize = 48 / 360 * MediaQuery.of(context).size.width;

    return Column(children: [
      DetailsProductImages(
          sizedBoxSize: sizedBoxSize,
          product: product,
          containerSize: containerSize),
      DetailsTopRoundedContainer(
        color: Colors.white,
        child: Column(
          children: [
            DetailsProductDescription(
              product: product,
              pressOnSeeMore: () {},
            ),
            Column(
              children: [
                ColorDots(product: product),
                const SizedBox(height: 50),
                SizedBox(
                  width: 0.9 *
                      MediaQuery.of(context)
                          .size
                          .width,
                  height:  0.07 *
                      MediaQuery.of(context)
                          .size
                          .height, // Adjust the 0.7 factor as needed
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Add to Cart"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kOrangeColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    ]);
  }
}
