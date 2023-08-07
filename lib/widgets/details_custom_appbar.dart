import 'package:e_commerce/widgets/rounded_icon_button.dart';
import 'package:flutter/material.dart';
class DetailsCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double rating;
  final double height;

  const DetailsCustomAppBar({Key? key, required this.height, required this.rating}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconButton(
              iconData: Icons.arrow_back_ios,
              press: () => Navigator.pop(context),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.white,
              ),
              child: Row(children: [
                Text(
                  rating.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 5),
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                  size: 18,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}