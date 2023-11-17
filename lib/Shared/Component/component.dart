import 'dart:ui';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant.dart';

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
            borderRadius: BorderRadius.circular(borderRadius),
            // border: Border.all(color: c5!.withOpacity(.5),style: BorderStyle.solid,width: 1),
          ),
          child: widget,
        ),
      ),
    );

Widget Post() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 6.0),
    child: GlassBox(
        widget: Container(
          width: double.infinity,
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
                            color: c5,
                            blurRadius: 2,
                            spreadRadius: 2,
                          ),
                        ]),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: c1,
                          backgroundImage: const NetworkImage(''),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Name Here',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.verified,
                                size: 18,
                                color: c4,
                              ),
                            ],
                          ),
                          const Text(
                            'Date & Time',
                            style: TextStyle(
                              // fontWeight: FontWeight.w800,

                              fontSize: 13,

                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.ellipsisVertical,
                            color: Colors.grey[300],
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  color: c1,
                  width: double.infinity,
                  height: .3,
                ),
                const SizedBox(
                  height: 15,
                ),
                ConditionalBuilder(
                    condition: true,
                    builder: (context) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  // 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                                  'Description', maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    fallback: (context) => const SizedBox(
                          height: 0,
                        )),
                ConditionalBuilder(
                    condition: true,
                    builder: (context) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            children: [
                              MaterialButton(
                                onPressed: () {},
                                minWidth: 1,
                                padding: EdgeInsets.zero,
                                child: const Text(
                                  '#Tag',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    fallback: (context) => const SizedBox(
                          height: 10,
                        )),
                ConditionalBuilder(
                    condition: true,
                    builder: (context) => Padding(
                          padding: const EdgeInsets.only(
                              left: 0, right: 0.0, top: 5),
                          child: Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2PacFBpXBfSh1aCipOEs5Wd0lJqAeBXbx2w&usqp=CAU',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                    fallback: (context) => const SizedBox(
                          height: 0,
                        )),
              ],
            ),
          ),
        ),
        color: c3.withOpacity(.2),
        borderRadius: 25,
        x: 0,
        y: 0),
  );
}

Widget Lecture_C() => InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 22.0,
              backgroundImage: const NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2PacFBpXBfSh1aCipOEs5Wd0lJqAeBXbx2w&usqp=CAU',
              ),
              backgroundColor: c2,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Computer Security',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: c5,
              ),
            ),
          ],
        ),
      ),
    );

Widget Matrial_C({required index}) => GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GlassBox(
            widget: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidFolder,
                    color: c1,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Lecture ${index + 1}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: c2,
                    ),
                  ),
                ],
              ),
            ),
            color: c5.withOpacity(.3),
            borderRadius: 20,
            x: 50,
            y: 50),
      ),
    );

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
//                             color: c3,
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
//           color: c1.withOpacity(.3),
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
