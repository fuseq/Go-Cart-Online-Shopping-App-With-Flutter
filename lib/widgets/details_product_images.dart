import 'package:flutter/material.dart';

import '../data/data.dart';
import '../utils/colors.dart';
class DetailsProductImages extends StatefulWidget {
  const DetailsProductImages({
    super.key,
    required this.sizedBoxSize,
    required this.product,
    required this.containerSize,
  });

  final double sizedBoxSize;
  final Product product;
  final double containerSize;

  @override
  State<DetailsProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<DetailsProductImages> {
  int selectedImageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: widget.sizedBoxSize,
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.product.productImageUrl[0],
              child: Image.network(
                widget.product.productImageUrl[selectedImageIndex],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ...List.generate(
            widget.product.productImageUrl.length,
            (index) => BuildSmallPreview(index, widget.product),
          ),
        ]),
      ],
    );
  }

  GestureDetector BuildSmallPreview(int index, Product product) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImageIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(8),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selectedImageIndex == index
                ? kOrangeColor
                : Colors.transparent,
          ),
        ),
        child: Image.network(
          product.productImageUrl[index],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
