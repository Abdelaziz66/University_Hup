import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Lecture_screen extends StatelessWidget {
   Lecture_screen({super.key});
  var drawerkey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: drawerkey,
      backgroundColor: Colors.transparent,
      drawer: Drawer(
        width: 130,
        // shape: Border.all(width: 3,color: Colors.red,style: BorderStyle.solid),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.black,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(top: 25,left: 10,bottom: 90),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueGrey.withOpacity(1),
            ),
            child: Column(
              children: [
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
                          'L1',
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
                          'L2',
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
                          'L3',
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
                          'L4',
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
                          'L5',
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
                          'L6',
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


              ],
            ),
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
                  padding: const EdgeInsets.only(left: 15.0,top: 30),
                  child: IconButton(
                      onPressed: () => drawerkey.currentState?.openDrawer(),
                      icon: FaIcon(FontAwesomeIcons.arrowRight,color: Colors.black,size: 25,)
                  ),
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
