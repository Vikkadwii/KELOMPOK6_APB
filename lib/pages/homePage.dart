import 'package:flutter/material.dart';
import '../services.dart/lists.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    void addHabit(BuildContext context) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Color(0xFFFAA9BF),
              title: Text(
                "Hey Allans",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white),
              ),
              content: Text("Don't Forget to Report Your Mood Today",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              actions: [
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepPurple)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("OK")),
              ],
            );
          });
    }

    return Scaffold(
      floatingActionButton: Stack(
        children: [
          FloatingActionButton(
            mini: true,
            backgroundColor: Colors.purple,
            child: Icon(Icons.notifications),
            onPressed: () {
              addHabit(context);
            },
          ),
          Positioned(
            top: 0.0,
            right: 0.0,
            child: CircleAvatar(
              radius: 6.0,
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 227, 170, 189),
      body: ListView(padding: EdgeInsets.zero, children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Stack(children: [
              Image.asset('assets/MainBackground.png'),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 140, 0, 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(children: [
                    Text(
                      "Hey Alllans !",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "You have ${moodList.length - counter} moods left for today",
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
          padding: EdgeInsets.all(35),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 0, 50), //kotak
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Life is Going Just Fine !",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("${((counter / moodList.length) * 100).round()}%",
                          style: TextStyle(color: Colors.black, fontSize: 16))
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                        minHeight: 12,
                        color: Color.fromARGB(255, 38, 172, 83),
                        backgroundColor: Color.fromARGB(255, 142, 203, 144),
                        value: (counter / moodList.length)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Divider(),
                ),
                SizedBox(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: moodList.length,
                    itemBuilder: (context, int index) {
                      return ListTile(
                          title: Text(moodList[index][1]),
                          subtitle: Text(moodList[index][2]),
                          trailing: moodList[index][3],
                          leading: Checkbox(
                            value: moodList[index][0],
                            onChanged: ((value) {
                              setState(() {
                                if (value == false) {
                                  counter -= 1;
                                  print(counter.toString());
                                  moodList[index][0] = value;
                                } else
                                  counter += 1;
                                print(counter.toString());
                                moodList[index][0] = value;
                              });
                            }),
                          ));
                    },
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
