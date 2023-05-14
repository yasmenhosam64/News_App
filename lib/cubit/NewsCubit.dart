import 'package:news_app/screens/Science.dart';
import 'package:news_app/screens/business.dart';
import 'package:news_app/screens/sports.dart';
import 'package:news_app/dio_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/state_News.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  List<dynamic> business = [];

  void getBusiness() {
    emit(NewsStateWebServicesOfBusinessLoading());

    DioHelper.getData('v2/top-headlines', {
      'country': 'eg',
      'category': 'business',
      'apiKey': 'fe9a66aa1afb4ef590220d9588fe5164'
    }).then(
      (value) {
        //print(value.data.toString());
        business = value.data['articles'];
        //print(business[0]['title']);
        emit(NewsWebServicesOfBusinessSuccessState());
      },
    ).catchError((error) {
      print(error.toString());
      emit(
        NewsWebServicesOfBusinessErrorState(error.toString()),
      );
    });
  }

  List<dynamic> sports = [];

  void getsports() {
    emit(NewsStateWebServicesOfSportsLoading());

    if (sports.length == 0) {
      DioHelper.getData('v2/top-headlines', {
        'country': 'eg',
        'category': 'sports',
        'apiKey': 'fe9a66aa1afb4ef590220d9588fe5164'
      }).then(
        (value) {
          //print(value.data.toString());
          sports = value.data['articles'];
          //print(business[0]['title']);
          emit(NewsWebServicesOfSportsSuccessState());
        },
      ).catchError((error) {
        print(error.toString());
        emit(
          NewsWebServicesOfSportsErrorState(error.toString()),
        );
      });
    } else {
      emit(NewsWebServicesOfSportsSuccessState());
    }
  }

  List<dynamic> science = [];

  void getSciences() {
    emit(NewsStateWebServicesOfSciencesLoading());

    if (science.length == 0) {
      DioHelper.getData('v2/top-headlines', {
        'country': 'eg',
        'category': 'science',
        'apiKey': 'fe9a66aa1afb4ef590220d9588fe5164'
      }).then(
        (value) {
          //print(value.data.toString());
          science = value.data['articles'];
          //print(business[0]['title']);
          emit(NewsWebServicesOfSciencesSuccessState());
        },
      ).catchError((error) {
        print(error.toString());
        emit(
          NewsWebServicesOfSciencesErrorState(error.toString()),
        );
      });
    } else {
      emit(NewsWebServicesOfSciencesSuccessState());
    }
  }

  // https://newsapi.org/v2/everything?q=s&apiKey=65f7f556ec76449fa7dc7c0069f040ca
}
