import 'package:e_commerce/screens/home_screen.dart';
import 'package:e_commerce/screens/login_screen.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/utils.dart';
import 'package:flutter/material.dart';

import '../widgets/image_list_view.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -10,
            left: -150,
            child: Row(
              children: const [
                ImageListView(startIndex: 0),
                ImageListView(startIndex: 1),
                ImageListView(startIndex: 2),
              ],
            ),
          ),
          Positioned(
            top: 600 * 0.08,
            child: const Text(
              "Go-Cart",
              textAlign: TextAlign.center,
              style: kTitleStyle,
            ),
          ),
          Positioned(
              bottom: 0,
              child: SizedBox(
                width: width,
                height: height * 0.60,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.60,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.white60,
                        Colors.white,
                        Colors.white,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                    ),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Your Appearence \nShows Your Quality",
                          style:
                              kNormalStyle.copyWith(fontSize: 30, height: 1.3),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 30),
                        Text(
                          "Change The Quality Of Your  \n Appearence with Go-Cart ",
                          style: kNormalStyle.copyWith(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              height: 1.5),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: buildIndicators(),
                        ),
                      ]),
                ),
              )),
              Positioned(
                bottom: 30,
                left: 20,
                right: 20,
                child: SizedBox(
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kOrangeColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen())),
                  child: const Text("Sign Up With Email"),
                
                )
              ))
        ],
      ),
    );
  }
}
