import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LayoutSCreen extends StatelessWidget {
  const LayoutSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
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