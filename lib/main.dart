import 'package:flutter/material.dart';
import './models/skill.dart';
import './widgets/rowcol.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //final skills = ["Dart", "Flutter", "React", "C++", "Javascript", "Python"];
  final List<skill> skills = [
    skill("Dart", "blue"),
    skill("Flutter", "black"),
    skill("React", "green"),
    skill("C++", "yellow"),
    skill("Python", "yellow"),
    skill("Firebase", "yellow")
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aryaveer".toUpperCase()),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                "I'm a developer who loves simplifying things. I love breaking down complex problems into simple, easy to understand solutions. I live in India as a software developer. In my spare time, I love to solve DS and Algorithms Question.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  "Skills",
                  style: TextStyle(
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 400,
                margin: EdgeInsets.only(left: 25, right: 25, top: 10),
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: (200 / 200),
                  children: List.generate(
                    skills.length,
                    (index) {
                      return RowCol(skills[index].name, skills[index].bgcolor);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
