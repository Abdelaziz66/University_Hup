import 'package:flutter/material.dart';

import '../../Shared/Component/component.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      itemBuilder: (context, index) => Post(),
      separatorBuilder: (context, index) => Container(
        height: 15,
        color: Colors.transparent,
      ),
      itemCount: 0,
    );
  }
}
