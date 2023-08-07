import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce/data/data.dart';
import 'package:e_commerce/widgets/top_container.dart';
import 'package:flutter/material.dart';

class CategoryDislayScreen extends StatefulWidget {
  const CategoryDislayScreen({super.key});

  @override
  State<CategoryDislayScreen> createState() => _CategoryDislayScreenState();
}

class _CategoryDislayScreenState extends State<CategoryDislayScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      child: Column(
        children: [
          const TopContainer(
              title: "Category", searchBarTitle: "Search Category"),
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 170,
                  margin: const EdgeInsets.only(
                      right: 10.0, left: 10.0, bottom: 10.0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: CachedNetworkImageProvider(
                        categories[index].thumbnailImage),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0)
                  ),
                  foregroundDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.2),
                            Colors.transparent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          )),
                  child: Stack(
                    children: [
                      Positioned(
                          left: 10,
                          bottom: 10,
                          child: Column(children: [
                            Text(
                              categories[index].categoryName,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              categories[index].productCount+" Products",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ]))
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
