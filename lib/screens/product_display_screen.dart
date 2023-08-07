import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/widgets/product_display_list_view.dart';
import 'package:e_commerce/widgets/top_container.dart';
import 'package:flutter/material.dart';

class ProductDisplayScreen extends StatefulWidget {
  const ProductDisplayScreen({super.key});

  @override
  State<ProductDisplayScreen> createState() => _ProductDisplayState();
}

class _ProductDisplayState extends State<ProductDisplayScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedValue = 0;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      child: Column(children: [
        const TopContainer(title: "Go-Cart", searchBarTitle: "Search Products"),
        TabBar(
          controller: tabController,
          indicatorColor: Colors.transparent,
          labelColor: Colors.white,
          unselectedLabelColor: kBackgroundColor,
          onTap: (value) {
            setState(() {
              selectedValue = value;
            });
            tabController.animateTo(value);
          },
          indicatorSize: TabBarIndicatorSize.label,
          tabs: [
            Container(
              
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: selectedValue == 0
                        ? kBackgroundColor
                        : kGreyColor.withOpacity(0.8),
                    boxShadow: selectedValue == 0
                        ? [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(0, 1),
                              blurRadius: 5,
                              spreadRadius: 1,
                            )
                          ]
                        : null),
                child: const Text(
                  "Trending",
                  textAlign: TextAlign.center,
                )),
            Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: selectedValue == 1
                        ? kBackgroundColor
                        : kGreyColor.withOpacity(0.8),
                    boxShadow: selectedValue == 1
                        ? [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(0, 1),
                              blurRadius: 5,
                              spreadRadius: 1,
                            )
                          ]
                        : null),
                child: const Text(
                  "Clothing",
                  textAlign: TextAlign.center,
                )),
          ],
        ),

        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: tabController,
            children: [
              ProductDisplayListView(),
              ProductDisplayListView(),

          ]),
        )
      ]),
    );
  }
}
