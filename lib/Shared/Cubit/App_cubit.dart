import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:university_hup/Modules/Navigation_Screens/Chat_Screen.dart';
import 'package:university_hup/Modules/Navigation_Screens/Home_Screen.dart';
import 'package:university_hup/Modules/Navigation_Screens/Lecture_Screen.dart';
import 'package:university_hup/Modules/Navigation_Screens/Profile_Screen.dart';
import 'package:university_hup/Modules/Navigation_Screens/Task_Screen.dart';
import 'App_state.dart';

class App_cubit extends Cubit<App_state> {
  App_cubit() : super(App_ini_state());
  static App_cubit get(context) => BlocProvider.of(context);

// Navigation Bar Start Here >>>>>>>>>>>>>>>>>>>>>>>>>>>>

  List<Widget> Nav_Bar_Items_List = [
    Home_screen(),
    Lecture_screen(),
    Chat_screen(),
    Task_screen(),
    Profile_screen()
  ];
  int Nav_Bar_index = 0;
  void Nav_Bar_Function({required index}) {
    Nav_Bar_index=index;
    emit(Nav_Bar_state());
  }

// Navigation Bar End Here >>>>>>>>>>>>>>>>>>>>>>>>>>>>


}
