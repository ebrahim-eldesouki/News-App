import 'package:flutter/material.dart';
import '../models/article_model.dart';
import 'news_tile.dart';

class NewsListView extends StatelessWidget {
 final List<ArticleModel> articles ;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: NewsTile(
                  articleModel: articles[index],
                ),
              ),
            ),
          );
  }
}
