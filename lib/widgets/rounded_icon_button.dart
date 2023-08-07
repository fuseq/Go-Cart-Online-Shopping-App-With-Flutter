import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    super.key,
    required this.iconData,
    required this.press,
  });

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40 / 360 * MediaQuery.of(context).size.width,
      width: 40 / 360 * MediaQuery.of(context).size.width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
        onPressed: press,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:12.0),
          child: Icon(
            iconData,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
