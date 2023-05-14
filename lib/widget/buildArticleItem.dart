import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/business.dart';
import 'package:news_app/screens/home.dart';
import 'package:news_app/cubit/NewsCubit.dart';
import 'package:news_app/widget/articleBuilder.dart';

import '../cubit/state_News.dart';
import '../dio_helper.dart';

late TextEditingController controller;

@override
void initState() {
  controller = TextEditingController();
}

@override
void dispose() {
  controller.dispose();
}

Widget buildArticleItem(articles, BuildContext context) {
  _onpress() {
    if (articles['title'].toString().isNotEmpty) {
      articles['title'] = " ";
    }
    if (articles['publishedAt'].toString().isNotEmpty) {
      articles['publishedAt'] = " ";
    }
  }

  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        IconButton(
            onPressed: () {
              _onpress();
            },
            icon: Icon(Icons.delete)),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://play-lh.googleusercontent.com/icNCjZG7gdE1Mq01GWaq8Zy6YFUhEw64w2I62jIBsCUu7SPaz5bMfsBFOVlMjdi7F3w',
              ),
            ),
          ),
        ),
        const SizedBox(width: 18),
        Expanded(
          child: SizedBox(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  '${articles['title']}',
                  style: const TextStyle(fontSize: 18),
                )),
                Text(
                  '${articles['publishedAt']}',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
