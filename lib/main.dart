import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Layout/LayoutScreen.dart';
import 'Shared/Cubit/App_cubit.dart';
import 'Shared/Cubit/App_state.dart';
import 'Shared/Cubit/bloc_observed.dart';
import 'Shared/Style/App_Style.dart';


void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(

          create: (context) => App_cubit(),

        ),
      ],
      child: BlocConsumer<App_cubit, App_state>(
          listener: (context, state) => () {},
          builder: (context, state) {
            App_cubit cubit = App_cubit.get(context);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: Light_Theme,
              darkTheme: Dark_Theme,
              themeMode: ThemeMode.light,

// home:StartWidget,
              home:  Layout_Screen(),
            );
          }),
    );
  }
}

