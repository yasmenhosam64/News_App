import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/widget/articleBuilder.dart';
import '../Widget/buildArticleItem.dart';
import '../cubit/NewsCubit.dart';
import '../cubit/state_News.dart';

class Science_news extends StatelessWidget {
  const Science_news({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state) {},
        builder: (context, state) {
          var list = NewsCubit.get(context).science;

          return articleBuilder(list);
        });
  }
}
