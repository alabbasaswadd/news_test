import 'package:flutter/material.dart';
import 'package:news_test/core/functions/get_data.dart';
import 'package:news_test/view/screens/test.dart';
import 'package:news_test/view/widget/custom_news.dart';
import 'package:news_test/view/widget/custom_slider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            alignment: Alignment.topCenter,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: ElevatedButton(onPressed: () {}, child: Text("al")),
                ),
                CustomSlider(),
                // CustomNews(),
                Test()
              ],
            )),
      ),
    );
  }
}
