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
    const Home_screen(),
    Lecture_screen(),
    const Chat_screen(),
    const Task_screen(),
    const Profile_screen()
  ];
  int Nav_Bar_index = 0;
  void Nav_Bar_Function({required index}) {
    Nav_Bar_index=index;
    emit(Nav_Bar_state());
  }

// Navigation Bar End Here >>>>>>>>>>>>>>>>>>>>>>>>>>>>
// Doctor And Engineer Start Here >>>>>>>>>>>>>>>>>>>>>>>>>>>>

  bool DE=true;
  void D_E_Function({required bool de}){
    DE=de;
    print(DE);
    emit(D_E_state());
  }


}
