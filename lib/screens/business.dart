import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import '../Widget/articleBuilder.dart';
import '../Widget/buildArticleItem.dart';
import '../Widget/divider.dart';
import '../cubit/NewsCubit.dart';
import '../cubit/state_News.dart';
import 'home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Business_news extends StatelessWidget {
  const Business_news({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state) {},
        builder: (context, state) {
          var list = NewsCubit.get(context).business;

          return articleBuilder(list);
        });
  }
}
