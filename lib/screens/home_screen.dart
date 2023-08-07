import 'package:e_commerce/screens/cart_screen.dart';
import 'package:e_commerce/screens/category_display_screen.dart';
import 'package:e_commerce/screens/product_display_screen.dart';
import 'package:e_commerce/screens/profile_screen.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final pageController = PageController(initialPage: 0);

  final tabBarIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.compass,
    FontAwesomeIcons.cartShopping,
    FontAwesomeIcons.user,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
          child: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            children:  [
              ProductDisplayScreen(),
              CategoryDislayScreen(),
              CartScreen(),
              ProfileScreen(),
             
            ],
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Container(
              alignment: Alignment.center,
              height: 70,
              decoration: BoxDecoration(
                color:kBackgroundColor,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ...tabBarIcons.map((icon) => IconButton(
                    onPressed: () {
                      setState(() {
                        currentIndex = tabBarIcons.indexOf(icon);
                        pageController.animateToPage(currentIndex, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                      });
                    },
                    icon: FaIcon(icon, color: currentIndex == tabBarIcons.indexOf(icon) ? Colors.white70 : Colors.white38, size: 30,),
                  ),),
              ],),
            ),
          )
        ],
      )),
    );
  }
}
