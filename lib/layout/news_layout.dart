import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/layout/cubit/cubit.dart';
import 'package:news_app/layout/cubit/states.dart';
import 'package:news_app/shared/cubit/cubit.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = NewsCubit.get(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(
                "News App"
            ),
            actions: [
              IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)),
              IconButton(
                onPressed: (){
                  AppCubit.get(context).changeAppMode();
                },
                icon: Icon(Icons.brightness_4_outlined
                ),
              )],
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.currentIndex,
            onTap: (index)
            {
              cubit.changeBottomNavigationBar(index);
            },
            items: cubit.bottomItems,
          ),
        );
      },
    );
  }
}
