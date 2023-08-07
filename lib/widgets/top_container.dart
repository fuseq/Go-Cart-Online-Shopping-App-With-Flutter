import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopContainer extends StatelessWidget {
  final String title;
  final String searchBarTitle;

  const TopContainer(
      {super.key, required this.title, required this.searchBarTitle});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Text(
            title,
            style: kNormalStyle.copyWith(
              fontSize: 22.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kGreyColor.withOpacity(0.8),
              ),
              child: Stack(children: [
                const Icon(
                  FontAwesomeIcons.bell,
                  color: Colors.black87,
                  size: 20,
                ),
                Positioned(
                    right: 0,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kOrangeColor,
                      ),
                    )),
              ])),
              const SizedBox(width: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: CachedNetworkImage(imageUrl: 'https://images.unsplash.com/photo-1611485988300-b7530defb8e2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=687&q=80',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                ),
              )
        ],
      ),

      Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: kGreyColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.black87,
              size: 20,
            ),
            const SizedBox(width: 10),
            Text(
              searchBarTitle,
              style: kNormalStyle.copyWith(
                color: Colors.black38,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
