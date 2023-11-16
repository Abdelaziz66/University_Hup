import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../Shared/Component/component.dart';
import '../../Shared/constant.dart';

class Lecture_screen extends StatelessWidget {
  Lecture_screen({super.key});
  var drawerkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerkey,
      backgroundColor: Colors.transparent,
      drawer: Drawer(
        // width: 220,
        // shape: Border.all(width: 3,color: Colors.red,style: BorderStyle.solid),
        backgroundColor: Colors.transparent,
        shadowColor: c5,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 10, bottom: 0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: c1?.withOpacity(1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  // child:ListView.separated(itemBuilder: (context, index) => Lecture_C(), separatorBuilder:
                  //     (context, index) => SizedBox(), itemCount: 6,),
                  child: Column(children: [
                    Lecture_C(),
                    Lecture_C(),
                    Lecture_C(),
                    Lecture_C(),
                  ]),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 30),
                  child: IconButton(
                      onPressed: () => drawerkey.currentState?.openDrawer(),
                      icon: FaIcon(
                        FontAwesomeIcons.arrowRight,
                        color: c1,
                        size: 25,
                      )),
                ),

                Spacer(),
              ],
            ),


            Spacer(),
          ],
        ),
      ),
    );
  }
}
