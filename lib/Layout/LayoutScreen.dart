import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Shared/Cubit/App_cubit.dart';
import '../Shared/Cubit/App_state.dart';

// #EEE5D8   #407473
class Layout_Screen extends StatelessWidget {
   Layout_Screen({super.key});
  var scafoldkey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        return Scaffold(
          key: scafoldkey,
           drawer:Drawer(
            backgroundColor: Colors.blueGrey,

            shadowColor: Colors.black,
            elevation: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage('assets/avaters/profilep.jpg',),

                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Serious',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Ser@gmail.com',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 45,
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(width: double.infinity,
                      height: 3,
                      color: Colors.white.withOpacity(.2),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      child: Row(
                        children: [
                          // Icon(Icons.arrow_forward_ios,size: 29,),
                          TextButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => loginscreen2()));
                            },
                            child: const Text(
                              'Quizzes',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      child: Row(
                        children: [
                          // Icon(Icons.arrow_forward_ios,size: 29,),
                          TextButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => loginscreen2()));
                            },
                            child: Text(
                              'Table',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      child: Row(
                        children: [
                          // Icon(Icons.arrow_forward_ios,size: 29,),
                          TextButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => loginscreen2()));
                            },
                            child: Text(
                              'Your Team',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      child: Row(
                        children: [
                          // Icon(Icons.arrow_forward_ios,size: 29,),
                          TextButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => loginscreen2()));
                            },
                            child: Text(
                              'Setting',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      child: Row(
                        children: [
                          // Icon(Icons.arrow_forward_ios,size: 29,),
                          TextButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => loginscreen2()));
                            },
                            child: Text(
                              'Help',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      child: Row(
                        children: [
                          // Icon(Icons.arrow_forward_ios,size: 29,),
                          TextButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => loginscreen2()));
                            },
                            child: Text(
                              'Rate us',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Spacer(),

                  ],
                ),
              ),
            ),
          ),
          backgroundColor:HexColor('#E0E1DD'),
          body: Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 300,
                      color: HexColor('#415A77'),
                    ),
                  ),
                ],
              ),

              Positioned(
                  child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY: 200),
                child: SizedBox(),
              )),

              SafeArea(child: Column(

                children: [
                  SizedBox(height: 60,),
                  Expanded(child: cubit.Nav_Bar_Items_List[cubit.Nav_Bar_index],),
                ],
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,top: 30),
                        child: IconButton(
                            onPressed: () => scafoldkey.currentState?.openDrawer(),
                            icon: FaIcon(FontAwesomeIcons.bars,color: Colors.black,size: 30,)
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0,top: 30),
                        child: IconButton(
                            onPressed: (){},
                            icon: FaIcon(FontAwesomeIcons.qrcode,color: Colors.black,size: 30,)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 23.0,top: 30),
                        child: IconButton(
                            onPressed: (){},
                            icon: FaIcon(FontAwesomeIcons.solidBell,color: Colors.black,size: 30,)
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: HexColor('#0D1B2A'),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: BottomNavigationBar(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          fixedColor: Colors.white,
                          unselectedIconTheme: IconThemeData(
                            size: 30,
                          ),
                          selectedIconTheme: IconThemeData(
        size: 30,
        ),
                          showSelectedLabels: false,
                          showUnselectedLabels: false,
                          unselectedItemColor:Colors.grey[400],

                          type: BottomNavigationBarType.fixed,
                          items: [
                            BottomNavigationBarItem(
                                icon: FaIcon(FontAwesomeIcons.house),
                                label: 'Home'),
                            BottomNavigationBarItem(
                                icon: FaIcon(FontAwesomeIcons.book),
                                label: 'Lecture'),
                            BottomNavigationBarItem(
                                icon: FaIcon(FontAwesomeIcons.whatsapp,),
                                label: 'Chat'),
                            BottomNavigationBarItem(
                                icon: FaIcon(FontAwesomeIcons.listCheck),
                                label: 'Task'),
                            BottomNavigationBarItem(
                                icon: FaIcon(FontAwesomeIcons.user),
                                label: 'Profile'),
                          ],
                          currentIndex: cubit.Nav_Bar_index,
                          onTap: (index) {
                            cubit.Nav_Bar_Function(index: index);
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
