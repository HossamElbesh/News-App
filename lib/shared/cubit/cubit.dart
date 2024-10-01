import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/shared/cubit/states.dart';
import 'package:news_app/shared/network/local/cache_helper.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  bool isDark = true;
  void changeAppMode()
  {
    isDark = !isDark;
    print("Theme changed: ${isDark ? "Dark" : "Light"}");
    CacheHelper.putBoolean(key: 'isDark', value: isDark).then((Value)
    {
      emit(AppChangeModeState());
    });
  }

  

}




