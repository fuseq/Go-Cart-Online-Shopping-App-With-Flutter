import 'package:e_commerce/widgets/details_body.dart';
import 'package:e_commerce/widgets/details_custom_appbar.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/rounded_icon_button.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: DetailsCustomAppBar(height: kToolbarHeight, rating: product.rating,),
      body: DetailsBody(product: product)
    );
  }
}


