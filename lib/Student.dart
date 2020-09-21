import 'package:flutter/material.dart';
import 'package:flutter_student_bottom/Addstudent.dart';
import 'package:flutter_student_bottom/Searchstudent.dart';
import 'package:flutter_student_bottom/Viewstudent.dart';
class Student extends StatefulWidget {
  @override
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student> {
  var chapter=[Addstudent(),Viewstudent(),Searchstudent()];
  int _chaptercount=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Student App"),
        ),
        body: chapter[_chaptercount],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _chaptercount,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.lightGreenAccent ,
            onTap: (index){
            setState(() {
              _chaptercount=index;
            });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.add),
              title: Text("Add Student")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.view_list),
              title: Text("View Student")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
              title:Text("Search Student")),

            ]),
      ),
    );
  }
}
