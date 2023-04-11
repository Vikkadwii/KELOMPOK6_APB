import 'package:flutter/material.dart';

import '../services.dart/chartsBuilder.dart';

class Habitspage extends StatefulWidget {
  const Habitspage({Key? key}) : super(key: key);

  @override
  State<Habitspage> createState() => _HabitspageState();
}

class _HabitspageState extends State<Habitspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(
          255, 225, 136, 166), //Color.fromARGB(255, 249, 232, 207),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Stack(children: [
              Image.asset('assets/HabitsPageBackground.png'),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 140, 0, 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(children: const [
                    Text(
                      "Your Mood Chart",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Use this to be inspired",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ]),
                ),
              )
            ]),
          ),
        ),
        Container(
          height: 513,
          child: ListView(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            children: [
              SizedBox(
                height: 200,
                child: LineChartSample1(),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 15, 10),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Average Monthly Mood",
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 15, 15, 10),
                child: Row(
                  children: [
                    Icon(Icons.mood),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 15, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Suggestion for you: ",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 227, 221, 230),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Stay consistent in maintaining your mood",
                        style: TextStyle(
                          color: Color.fromARGB(255, 33, 33, 33),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 15, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Motivation for you: ",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 227, 221, 230),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Enjoy every little thing in your life",
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
