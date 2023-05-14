abstract class NewsState {}

class NewInitialState extends NewsState {}

class NewsBottomNavState extends NewsState {}




class NewsStateWebServicesOfBusinessLoading extends NewsState{}

class NewsWebServicesOfBusinessSuccessState extends NewsState{}

class NewsWebServicesOfBusinessErrorState extends NewsState{
  final String Error;
  NewsWebServicesOfBusinessErrorState(this.Error);
}


class NewsStateWebServicesOfSportsLoading extends NewsState{}

class NewsWebServicesOfSportsSuccessState extends NewsState{}

class NewsWebServicesOfSportsErrorState extends NewsState{
  final String Error;
  NewsWebServicesOfSportsErrorState(this.Error);
}


class NewsStateWebServicesOfSciencesLoading extends NewsState{}

class NewsWebServicesOfSciencesSuccessState extends NewsState{}

class NewsWebServicesOfSciencesErrorState extends NewsState{
  final String Error;
  NewsWebServicesOfSciencesErrorState(this.Error);
}


class NewsStateWebServicesOfSearchLoading extends NewsState{}

class NewsWebServicesOfSearchSuccessState extends NewsState{}

class NewsWebServicesOfSearchErrorState extends NewsState{
  final String Error;
  NewsWebServicesOfSearchErrorState(this.Error);
}



class ChangeModeThemeOfApp extends NewsState{}