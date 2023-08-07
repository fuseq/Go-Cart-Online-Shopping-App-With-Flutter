import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data/data.dart';
import '../utils/colors.dart';

class DetailsProductDescription extends StatelessWidget {
  const DetailsProductDescription({
    super.key,
    required this.product, required this.pressOnSeeMore,
  });

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Text(
      product.productName,
      style: Theme.of(context).textTheme.titleLarge,
    ),
              ),
              const SizedBox(height: 5),
              Align(
    alignment: Alignment.centerRight,
    child: Container(
      padding: EdgeInsets.all(15),
      width: 64,
      decoration: BoxDecoration(
        color:
            product.isLiked ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Icon(
        Icons.favorite,
        color:
            product.isLiked ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
      ),
    ),
              ),
              Padding(
    padding: const EdgeInsets.only(left: 20, right: 64),
    child: Text(
      product.productDescription,
      maxLines: 3,
      style: TextStyle(
        height: 1.5,
        color: Color.fromARGB(255, 153, 152, 152),
      ),
    ),
              ),
              Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
    child: GestureDetector(
      onTap: pressOnSeeMore,
      child: const Row(
        children: [
          Text("See More Detail",
              style: TextStyle(
                  color: kOrangeColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16)),
          SizedBox(width: 5),
          Icon(
            FontAwesomeIcons.chevronRight,
            size: 12,
            color: kOrangeColor,
          )
        ],
      ),
    ),
              )
            ]);
  }
}