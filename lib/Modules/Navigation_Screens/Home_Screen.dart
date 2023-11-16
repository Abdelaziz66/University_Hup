import 'package:flutter/material.dart';

import '../../Shared/Component/component.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ListView.separated(
        itemBuilder: (context, index) => Post(),
        separatorBuilder: (context, index) => Container(
          height: 15,
          color: Colors.transparent,
        ),
        itemCount: 3,
      ),
    );
  }
}
