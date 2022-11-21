import 'package:flutter/material.dart';

class Firstside extends StatelessWidget {
  const Firstside({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Home",
                  style: TextStyle(fontSize: 18, color: Colors.grey[500]),
                ),
                Text(
                  "Annie Bryant",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                      child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        child: Container(
                          margin: EdgeInsets.only(left: 5),
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                        ),
                      ),
                      Container(
                        transform: Matrix4.rotationZ(50),
                        child: Icon(
                          Icons.notifications,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )),
                  Container(
                    padding: const EdgeInsets.only(left: 15.0, right: 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 30,
                      child: Center(child: Image.asset("images/profile.png")),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
