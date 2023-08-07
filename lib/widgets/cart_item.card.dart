import 'package:flutter/material.dart';

import '../models/Cart.dart';
import '../utils/colors.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.cart,
  });

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88 / 360 * MediaQuery.of(context).size.width,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  cart.product.productImageUrl[0],
                  fit: BoxFit
                      .cover, // This will make the image fill the container while maintaining aspect ratio
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 20 / 360 * MediaQuery.of(context).size.width),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.productName,
              style: TextStyle(fontSize: 16, color: Colors.black),
              maxLines: 2,
            ),
            const SizedBox(height: 10),
            Text.rich(TextSpan(
                text: "\$${cart.product.currentPrice}",
                style: TextStyle(color: kOrangeColor),
                children: [
                  TextSpan(
                      text: " x${cart.numOfItems}",
                      style: TextStyle(color: Colors.grey.shade500))
                ])),
          ],
        )
      ],
    );
  }
}
