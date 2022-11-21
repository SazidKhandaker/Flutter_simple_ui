import 'package:flutter/material.dart';

class ListviewDemo extends StatefulWidget {
  const ListviewDemo({super.key});

  @override
  State<ListviewDemo> createState() => _ListviewDemoState();
}

class _ListviewDemoState extends State<ListviewDemo> {
  List mylisyt = [
    ["All", true],
    ["⚡  Popular", false],
    ["⭐ Featured", false]
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.only(left: 30, top: 15),
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: mylisyt.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      for (int i = 0; i < mylisyt.length; i++) {
                        mylisyt[i][1] = false;
                      }
                      if (mylisyt[index][1] == false) {
                        mylisyt[index][1] = true;
                      }
                    });
                  },
                  child: Container(
                    height: 25,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: mylisyt[index][1] == false
                            ? Border.all(color: Colors.green, width: 1)
                            : Border.all(color: Colors.transparent),
                        color: mylisyt[index][1] == true
                            ? Colors.green.withOpacity(0.3)
                            : Colors.white),
                    child: Center(
                      child: Text(
                        "${mylisyt[index][0]}",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              );
            })),
      ),
    );
  }
}
