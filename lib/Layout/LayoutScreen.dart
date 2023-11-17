import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:university_hup/Shared/Component/component.dart';
import '../Shared/Cubit/App_cubit.dart';
import '../Shared/Cubit/App_state.dart';
import '../Shared/constant.dart';

// #EEE5D8   #407473
class Layout_Screen extends StatelessWidget {
  Layout_Screen({super.key});
  var scafoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        return Scaffold(
          key: scafoldkey,
          drawer: Drawer(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.black,
            elevation: 0,
            child: GlassBox(widget:  Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(
                          '',
                        ),
                      ),
                      const SizedBox(
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
                              color: c5,
                            ),
                          ),
                          Text(
                            'Ser@gmail.com',
                            style: TextStyle(
                              fontSize: 10,
                              color: c5,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        size: 45,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 3,
                    color: Colors.white.withOpacity(.2),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
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
                          child:  Text(
                            'Quizzes',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: c5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
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
                              color: c5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
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
                              color: c5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
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
                              color: c5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
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
                              color: c5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
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
                              color: c5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Spacer(),
                ],
              ),
            ), color: c1.withOpacity(1), borderRadius: 0, x: 100, y: 100),
          ), // Choose the nav bar style with this property.,
          backgroundColor: c5,
          body: Stack(
            children: [
              Column(
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
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 100,
                          color: c4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),


              Positioned(
                  child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY: 200),
                child: const SizedBox(),
              )),

              // Column(
              //   children: [
              //     Container(
              //       width: double.infinity,
              //       height: 80,
              //       decoration: BoxDecoration(
              //         color: Colors.greenAccent,
              //       ),
              //     ),
              //     Spacer(),
              //     Container(
              //       width: double.infinity,
              //       height: 80,
              //       decoration: BoxDecoration(
              //         color: Colors.blueGrey,
              //       ),
              //     ),
              //   ],
              // ),
              // Positioned.fill(
              //   child: BackdropFilter(
              //     filter: ImageFilter.blur(sigmaX: 150, sigmaY: 150),
              //     child: SizedBox(),
              //   ),
              // ),

              SafeArea(
                  child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Expanded(
                    child: cubit.Nav_Bar_Items_List[cubit.Nav_Bar_index],
                  ),
                ],
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 30),
                        child: IconButton(
                            onPressed: () =>
                                scafoldkey.currentState?.openDrawer(),
                            icon: FaIcon(
                              FontAwesomeIcons.bars,
                              color: c1,
                              size: 30,
                            )),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, top: 30),
                        child: IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.qrcode,
                              color: c1,
                              size: 30,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 23.0, top: 30),
                        child: IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.solidBell,
                              color: c1,
                              size: 30,
                            )),
                      ),
                    ],
                  ),
                  const Spacer(),
                  // Choose the nav bar style with this property.,

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: c1,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: BottomNavigationBar(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          fixedColor: Colors.white,
                          unselectedIconTheme: const IconThemeData(
                            size: 30,
                          ),
                          selectedIconTheme: const IconThemeData(
                            size: 30,
                          ),
                          showSelectedLabels: false,
                          showUnselectedLabels: false,
                          unselectedItemColor: Colors.grey[400],
                          type: BottomNavigationBarType.fixed,
                          items: const [
                            BottomNavigationBarItem(
                                icon: FaIcon(FontAwesomeIcons.house),
                                label: 'Home'),
                            BottomNavigationBarItem(
                                icon: FaIcon(FontAwesomeIcons.book),
                                label: 'Lecture'),
                            BottomNavigationBarItem(
                                icon: FaIcon(
                                  FontAwesomeIcons.whatsapp,
                                ),
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
