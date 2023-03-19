
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/cubit/cubit.dart';
import '../shared/cubit/states.dart';
class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Appcubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = Appcubit.get(context);
        return SafeArea(
          child: Scaffold(
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                cubit.changeNavBar(index);
              },
              currentIndex: cubit.currentIndex,
              items: cubit.bottomNavItems,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.black,
            ),
          ),
        );
      },
    );
  }
}

/*
BlocConsumer<FinderCubit, FinderStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = FinderCubit.get(context);
        return SafeArea(
          child: Scaffold(
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                cubit.changeNavBar(index);
              },
              currentIndex: cubit.currentIndex,
              items: cubit.bottomNavItems,
            ),
          ),
        );
      },
    );
*/