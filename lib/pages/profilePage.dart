import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(15, 50, 15, 20),
        children: [
          CircleAvatar(
            radius: 150,
            backgroundColor: Color.fromARGB(255, 226, 125, 118),
            backgroundImage: NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/3048/3048127.png'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, bottom: 10),
            child: const Center(
                child: Text(
              "Welcome, Allans!",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat"),
            )),
          ),
          Center(
              child: Text(
            "Take care of your mental health!",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: "Montserrat"),
          )),
          Padding(
            padding: EdgeInsets.all(10),
            child: Divider(),
          ),
          ListTile(
            leading: Icon(Icons.person_outline,
                color: Color.fromARGB(255, 226, 125, 118)),
            title: Text("Age: 25", style: TextStyle(fontFamily: "Montserrat")),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person_outline,
                color: Color.fromARGB(255, 226, 125, 118)),
            title:
                Text("Sex: Male", style: TextStyle(fontFamily: "Montserrat")),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.location_on,
                color: Color.fromARGB(255, 226, 125, 118)),
            title: Text("City: New York",
                style: TextStyle(fontFamily: "Montserrat")),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.work_outline,
                color: Color.fromARGB(255, 226, 125, 118)),
            title: Text("Job: Software Engineer",
                style: TextStyle(fontFamily: "Montserrat")),
          ),
          Divider(),
          Center(
            child: TextButton(
              onPressed: (() {
                print("User logged out");
              }),
              child: Text(
                "Log Out",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Montserrat"),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 226, 125, 118)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
            ),
          )
        ],
      ),
    );
  }
}
