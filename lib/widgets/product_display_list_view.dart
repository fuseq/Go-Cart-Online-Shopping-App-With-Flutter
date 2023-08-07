import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce/data/data.dart';
import 'package:e_commerce/screens/details_screen.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDisplayListView extends StatefulWidget {
  const ProductDisplayListView({super.key});

  @override
  State<ProductDisplayListView> createState() => _ProductDisplayListViewState();
}

class _ProductDisplayListViewState extends State<ProductDisplayListView> {
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      crossAxisSpacing: 15,
      crossAxisCount: 2,
      itemCount: products.length,
      mainAxisSpacing: 10,
      itemBuilder: (context, index) {
        return SingleItemWidget(
            products[index], index == products.length - 1 ? true : false);
      },
    );
  }

  Widget SingleItemWidget(Product product, bool lastItem) {
    return Column(children: [
      InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(product: product)));},
        child: Stack(
          children: [
            Container(
                padding: const EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(1, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(28),
                        child: CachedNetworkImage(
                          imageUrl: product.productImageUrl[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          left: 8.0,
                          right: 8.0,
                        ),
                        child: Text(
                          product.productName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                            left: 8.0,
                            right: 8.0,
                          ),
                          child: Row(
                            children: [
                              Text("\$${product.currentPrice}"),
                              const SizedBox(width: 5.0),
                              Text(
                                "\$${product.oldPrice}",
                                style: const TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: kRedColor,
                                    decorationThickness: 2),
                              ),
                            ],
                          )),
                    ])),
            Positioned(
              right: 5,
              top: 10,
              child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(
                  product.isLiked == true
                      ? FontAwesomeIcons.solidHeart
                      : FontAwesomeIcons.heart,
                  size: 15,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      SizedBox(height: lastItem ? MediaQuery.of(context).size.height * 0.50 : 0)
    ]);
  }
}
