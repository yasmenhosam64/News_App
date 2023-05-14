import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/NewsCubit.dart';
import '../cubit/state_News.dart';

import 'package:news_app/main.dart';
import 'business.dart';
import 'sports.dart';
import 'Science.dart';
import 'package:news_app/dio_helper.dart';

class HomePage extends StatefulWidget {
  static HomePage get(context) => BlocProvider.of(context);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NewsCubit.get(context);
          return new DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: AppBar(
                  title: Text("News App"),
                  automaticallyImplyLeading: false,
                  backgroundColor: Color.fromARGB(255, 187, 16, 16),
                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        text: "Business",
                      ),
                      Tab(
                        text: "Sports",
                      ),
                      Tab(
                        text: "Science",
                      )
                    ],
                  ),
                  actions: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.search))
                  ],
                ),
                body: TabBarView(children: [
                  Business_news(),
                  Sports_news(),
                  Science_news(),
                ]),
              ));
        });
  }
}
