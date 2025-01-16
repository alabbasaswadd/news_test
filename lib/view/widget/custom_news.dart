import 'package:flutter/material.dart';
import 'package:news_test/core/functions/get_data.dart';
import 'package:news_test/model/news_model.dart';

class CustomNews extends StatefulWidget {
  CustomNews({super.key});

  @override
  State<CustomNews> createState() => _CustomNewsState();
}

class _CustomNewsState extends State<CustomNews> {
  List<NewsModel> lst = [];
  bool isLoading = true;
  @override
  void initState() {
    getPostCustom();
    super.initState();
  }

  Future<dynamic> getPostCustom() async {
    lst = await getData();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverFillRemaining(child: Center(child: CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: lst.length,
              (context, i) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  children: [
                    Image.network(
                      lst[i].image == null ||
                              lst[i].image ==
                                  "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/QYA4O6SIIMI6VENLZZBZVJOHYE.jpg&w=1440" ||
                              lst[i].image ==
                                  "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/LI2AXZUAGT6EOJISOPMQGW77I4_size-normalized.jpg&w=1440" ||
                              lst[i].image ==
                                  "https://www.reuters.com/resizer/v2/GN2THQUNWRL57BGTDVH7J6E66M.jpg?auth=08504e0f7bbd4d35b8b7001f3f8478cb501ece02dec96a94a56a07f71565b690&height=1005&width=1920&quality=80&smart=true"
                          ? "https://mjc.org.za/wp-content/uploads/2018/11/holy-quran.jpg"
                          : lst[i].image!,
                      height: 200,
                      width: double.infinity,
                    ),
                    Text(
                      lst[i].title,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      lst[i].subtitle == null ? " " : lst[i].subtitle!,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
