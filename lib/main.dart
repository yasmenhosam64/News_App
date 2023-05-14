import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/shared.dart';
import 'cubit/NewsCubit.dart';
import 'cubit/state_News.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'dio_helper.dart';
import 'screens/home.dart';
import 'package:dio/dio.dart';
import 'package:news_app/screens/home.dart';

void main() {
  DioHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NewsCubit()
          ..getBusiness()
          ..getsports()
          ..getSciences(),
        child: BlocConsumer<NewsCubit, NewsState>(
            listener: (context, state) {},
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  primarySwatch: Colors.red,
                ),
                home: HomePage(),
              );
            }));
  }
}
