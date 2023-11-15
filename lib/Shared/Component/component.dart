import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




// Abdealziz ------------------------------------------------------------------------------

Widget GlassBox({
  required Widget? widget,
  required Color? color,
  required double? borderRadius,
  required double? x,
  required double? y,
}) =>
    ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius!),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: y!,
          sigmaX: x!,
          tileMode: TileMode.clamp,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: color,
          ),
          child: widget,
        ),
      ),
    );

Widget Post() {
  TextEditingController? comment_controller = TextEditingController();

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 6.0),
    child: GlassBox(
        widget: Container(
          width: double.infinity,

          // decoration: BoxDecoration(

          //

          //   borderRadius: BorderRadius.circular(25),

          //

          //   color: Colors.blueGrey.withOpacity(.3),

          //

          // ),

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    children: [
                      Container(
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, boxShadow: [
                          BoxShadow(
                            color: Colors.greenAccent,
                            blurRadius: 2,
                            spreadRadius: 2,
                          ),
                        ]),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(''),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Name Here',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.verified,
                                size: 18,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          Text(
                            'Data here',
                            style: TextStyle(
                              // fontWeight: FontWeight.w800,

                              fontSize: 13,

                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.ellipsisVertical,
                            color: Colors.grey[300],
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  color: Colors.blueGrey,
                  width: double.infinity,
                  height: .3,
                ),
                SizedBox(
                  height: 15,
                ),
                // ConditionalBuilder(
                //     condition: true,
                //     builder: (context) => Padding(
                //           padding: const EdgeInsets.symmetric(horizontal: 5.0),
                //           child: Row(
                //             children: [
                //               Expanded(
                //                 child: Text(
                //                   // 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                //                   '${postmap.text}', maxLines: 4,
                //                   overflow: TextOverflow.ellipsis,
                //                   style: TextStyle(
                //                     fontWeight: FontWeight.w600,
                //                     fontSize: 15,
                //                     color: Colors.grey[300],
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //     fallback: (context) => SizedBox(
                //           height: 0,
                //         )),
                // ConditionalBuilder(
                //     condition: postmap.tag != '',
                //     builder: (context) => Padding(
                //           padding: const EdgeInsets.symmetric(horizontal: 5.0),
                //           child: Row(
                //             children: [
                //               MaterialButton(
                //                 onPressed: () {},
                //                 minWidth: 1,
                //                 padding: EdgeInsets.zero,
                //                 child: Text(
                //                   '#${postmap.tag}',
                //                   style: TextStyle(
                //                     fontWeight: FontWeight.w600,
                //                     fontSize: 16,
                //                     color: Colors.white,
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //     fallback: (context) => SizedBox(
                //           height: 10,
                //         )),
                // ConditionalBuilder(
                //     condition: postmap.image != '',
                //     builder: (context) => Padding(
                //           padding: const EdgeInsets.only(
                //               left: 0, right: 0.0, top: 5),
                //           child: Container(
                //             width: double.infinity,
                //             height: 200,
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(10),
                //               image: DecorationImage(
                //                 image: NetworkImage(
                //                   '${postmap.image}',
                //                 ),
                //                 fit: BoxFit.cover,
                //               ),
                //             ),
                //           ),
                //         ),
                //     fallback: (context) => SizedBox(
                //           height: 0,
                //         )),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          // if (likemodel.uIds!.contains('${postmap.uid}')) {
                          //   App_cubit.get(context).unlikepost_Function(
                          //       postId: postId, index: index);
                          // } else {
                          //   App_cubit.get(context).likepost_Function(
                          //       postId: postId, index: index);
                          // }
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.heart,
                          size: 25,
                          // color: App_cubit.get(context).likeId_list!.contains(App_cubit.get(context).model?.uid) ?Colors.greenAccent:Colors.grey[200],
                          color: true
                              ? Colors.red
                              : Colors.grey[200],
                        ),
                      ),
                      Text(
                        '30',
                        style: TextStyle(
                          color: Colors.grey[300],
                        ),
                      ),

                      SizedBox(
                        width: 20,
                      ),
                      FaIcon(
                        FontAwesomeIcons.comment,
                        size: 25,
                        color: Colors.grey[200],
                      ),

                      SizedBox(
                        width: 15,
                      ),

                      FaIcon(
                        FontAwesomeIcons.angleUp,
                        size: 25,
                        color: Colors.grey[200],
                      ),

                      // Text('60',style: TextStyle(

                      //   color: Colors.white,

                      // ),),

                      Spacer(),

                      FaIcon(
                        FontAwesomeIcons.bookmark,
                        size: 25,
                        color: Colors.grey[200],
                      ),

                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueGrey[900],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 1,
                          spreadRadius: .1,
                        ),
                      ]),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          decoration:
                              BoxDecoration(shape: BoxShape.circle, boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 1,
                              spreadRadius: .1,
                            ),
                          ]),
                          child: CircleAvatar(
                            radius: 18,
                            backgroundImage: NetworkImage(
                              '',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 150,
                        height: 30,
                        child: TextFormField(
                          controller: comment_controller,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            label: Text(
                              'Add Comment Here ..',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[300],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'comment',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                          onPressed: () {

                          },
                          icon: FaIcon(
                            FontAwesomeIcons.commentDots,
                            size: 25,
                            color: Colors.grey[200],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        color: Colors.blueGrey.withOpacity(.4),
        borderRadius: 25,
        x: 0,
        y: 0),
  );
}

// Widget Chat({context, required user_model? card_chat_list}) => Padding(
//       padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
//       child: GlassBox(
//           widget: InkWell(
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ChatScreen(
//                       card_chat_list: card_chat_list,
//                     ),
//                   ));
//
//               App_cubit.get(context)
//                   .GetChat_Function(reciverid: card_chat_list?.uid);
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Row(
//                 children: [
//                   Container(
//                     decoration:
//                         BoxDecoration(shape: BoxShape.circle, boxShadow: [
//                       BoxShadow(
//                         color: Colors.greenAccent,
//                         blurRadius: 2,
//                         spreadRadius: 2,
//                       ),
//                     ]),
//                     child: CircleAvatar(
//                       radius: 25,
//                       backgroundImage: NetworkImage('${card_chat_list?.image}'),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 15,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Row(
//                         children: [
//                           Text(
//                             '${card_chat_list?.name}',
//                             style: TextStyle(
//                               fontWeight: FontWeight.w900,
//                               fontSize: 18,
//                               color: Colors.grey[200],
//                             ),
//                           ),
//                           SizedBox(
//                             width: 4,
//                           ),
//                           Icon(
//                             Icons.verified,
//                             size: 18,
//                             color: Colors.blue,
//                           ),
//                         ],
//                       ),
//                       Text(
//                         'april 21,2021 at 3:25 PM  ',
//                         style: TextStyle(
//                           // fontWeight: FontWeight.w800,
//
//                           fontSize: 13,
//
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ],
//                   ),
//                   Spacer(),
//                   IconButton(
//                       onPressed: () {},
//                       icon: FaIcon(
//                         FontAwesomeIcons.ellipsisVertical,
//                         color: Colors.grey[300],
//                       )),
//                 ],
//               ),
//             ),
//           ),
//           color: Colors.blueGrey.withOpacity(.3),
//           borderRadius: 30,
//           x: 50,
//           y: 50),
//     );
//
// Widget ChatHeader() => Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: CircleAvatar(
//         radius: 40,
//         backgroundImage: NetworkImage(
//             'https://cdn.pixabay.com/photo/2017/08/01/08/29/woman-2563491_640.jpg'),
//       ),
//     );










// Abdelhaq ----------------------------------------------------------------------------------------