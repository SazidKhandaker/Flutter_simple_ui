import 'package:day21ui/Firstpage/secondpart.dart';
import 'package:day21ui/Firstpage/third.dart';
import 'package:flutter/material.dart';

import 'Firstpage/firstside.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(),
              flex: 2,
            ),
            Expanded(
              child: Container(
                color: Colors.grey.withOpacity(0.3),
              ),
              flex: 1,
            )
          ],
        ),
        Column(
          children: [
            Firstside(),
            Secondpart(),
            ListviewDemo(),
          ],
        )
      ],
    )));
  }
}
