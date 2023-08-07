import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/widgets/profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ProfilePic(),
      const SizedBox(height: 20),
      ProfileMenu(
        text: 'My Account',
        press: () {},
        icon: FontAwesomeIcons.user,
      ),
      ProfileMenu(
        text: 'My Orders',
        press: () {},
        icon: FontAwesomeIcons.bagShopping,
      ),
      ProfileMenu(
        text: 'Settings',
        press: () {},
        icon: FontAwesomeIcons.gear,
      ),
      ProfileMenu(
        text: 'Help Center',
        press: () {},
        icon: FontAwesomeIcons.circleInfo,
      ),
      ProfileMenu(
        text: 'Logout',
        press: () {},
        icon: FontAwesomeIcons.rightFromBracket,
      )
    ]);
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.press,
    required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        ),
        onPressed: press,
        child: Row(
          children: [
            FaIcon(icon, color: kOrangeColor),
            const SizedBox(width: 20),
            Text(
              text,
              style: TextStyle(color: Colors.grey.shade600),
            ),
            const Spacer(),
            const FaIcon(FontAwesomeIcons.chevronRight, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
