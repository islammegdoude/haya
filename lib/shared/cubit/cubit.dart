import 'package:flutter/material.dart';
import 'package:haya/modules/chat/chatScreen.dart';
import 'package:haya/shared/cubit/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modules/home/homeScreen.dart';
import '../../modules/profile/profile.dart';
import '../../modules/save/saveScreen.dart';
import '../../modules/search/searchScreen.dart';
class Appcubit extends Cubit<AppStates>{
  Appcubit() : super(AppInitailState());
  static Appcubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens = const[
    HomeScreen(),
    SaveScreen(),
    SearchScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];
  List<BottomNavigationBarItem> bottomNavItems = const [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home_filled,
      ),
      label: 'home'
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.favorite_border_rounded,
      ),
      label: 'save'
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.search,
      ),
      label: 'search'
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.chat,
      ),
      label: 'chat'
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline_rounded),
      label: 'Profile'
    ),
  ];
  void changeNavBar(index) {
    currentIndex = index;
    emit(AppChangeNavBarState());
  }
}