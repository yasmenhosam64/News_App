import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'buildArticleItem.dart';
import 'divider.dart';

Widget articleBuilder(list) {
  return ConditionalBuilder(
      condition: list.length > 0,
      builder: (context) => ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) =>
                buildArticleItem(list[index], context),
            separatorBuilder: (context, index) => MyDivider(),
          ),
      fallback: (context) => const Center(
            child: CircularProgressIndicator(),
          ));
}
