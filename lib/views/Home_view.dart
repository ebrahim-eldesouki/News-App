import 'package:flutter/material.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/news_List_View_Builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title:  RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                  text: 'News',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 35)),
              TextSpan(
                  text: ' Cloud',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 35)),
            ],
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: <Color>[Colors.blueGrey, Colors.blue]),
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(13),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            NewsListViewBuilder(category: 'general',),
          ],
        ),
      ),
    );
  }
}


