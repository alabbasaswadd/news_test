import 'package:flutter/material.dart';
import 'package:news_test/model/categories_model.dart';

// ignore: must_be_immutable
class CustomSlider extends StatelessWidget {
  CustomSlider({super.key});
  List<CategoriesModel> categories = [
    CategoriesModel(text: "Sports", image: "assets/images/sport.jpg"),
    CategoriesModel(text: "Business", image: "assets/images/business.jpg"),
    CategoriesModel(text: "Health", image: "assets/images/health.avif"),
    CategoriesModel(text: "Technology", image: "assets/images/technology.jpeg"),
    CategoriesModel(text: "General", image: "assets/images/general.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        height: 150,
        width: double.infinity,
        child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) => Container(
            width: 210,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                categories[i].image,
              )),
            ),
            child: Center(
                child: Text(
              categories[i].text,
              style: TextStyle(color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}
