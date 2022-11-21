import 'package:flutter/material.dart';

class Secondpart extends StatelessWidget {
  const Secondpart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .400,
      width: MediaQuery.of(context).size.width * .900,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage("images/container.png"), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Fast Search",
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "You can Search  qucikly\nthe job you want",
                style: TextStyle(
                    fontSize: 20, color: Colors.white.withOpacity(0.5)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: 800,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "images/Search.png",
                          height: 30,
                          width: 50,
                        ),
                      ),
                      Text(
                        "Fast Search",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
