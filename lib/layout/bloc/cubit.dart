import 'package:cinema_app_ui/layout/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout_screens/feed/screens/feed_screen.dart';
import '../../layout_screens/home/screens/home_screen.dart';
import '../../layout_screens/profile/screens/profile_screen.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(AshInitialState());

  static LayoutCubit get(context) => BlocProvider.of(context);

  final iconList = <IconData>[
    Icons.feed,
    Icons.home_filled,
    Icons.person,
  ];

  List<Widget> screens = [
    const FeedScreen(),
    const HomeScreen(),
    const ProfileScreen(),
  ];

  int currentIndex = 0;

  void change(index) {
    currentIndex = index;
    emit(ChangeBottomBarIconState());
  }
}
