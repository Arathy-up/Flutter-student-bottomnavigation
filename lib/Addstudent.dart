import 'package:flutter/material.dart';
class Addstudent extends StatefulWidget {
  @override
  _AddstudentState createState() => _AddstudentState();
}

class _AddstudentState extends State<Addstudent> {
  TextEditingController name=TextEditingController();
  TextEditingController admn=TextEditingController();
  TextEditingController rollno=TextEditingController();
  TextEditingController college=TextEditingController();
  TextEditingController contact=TextEditingController();
  var namevar="0";
  var admnvar="0";
  var rollnovar="0";
  var collegevar="0";
  var contactvar="0";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.blue),
            controller: name,
            decoration: InputDecoration(
              hintText: "Enter Student's Name",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.blue),
            controller: admn,
            decoration: InputDecoration(
                hintText: "Enter Admission No",
                prefixIcon: Icon(Icons.account_box),
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.blue),
            controller: rollno,
            decoration: InputDecoration(
                hintText: "Enter Roll Number",
                prefixIcon: Icon(Icons.control_point),
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.blue),
            controller: college,
            decoration: InputDecoration(
                hintText: "Enter College Name",
                prefixIcon: Icon(Icons.home),
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 5.0,),
          TextField(
            style: TextStyle(color: Colors.blue),
            controller: contact,
            decoration: InputDecoration(
                hintText: "Enter Contact Number",
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 5.0,),
          RaisedButton(onPressed: (){
            setState(() {
              namevar=name.text;
              admnvar=admn.text;
              rollnovar=rollno.text;
              collegevar=college.text;
              contactvar=contact.text;

            });
          },child: Text("Submit"),),
          Text(namevar),
          Text(admnvar),
          Text(rollnovar),
          Text(collegevar),
          Text(contactvar),

        ],
      ),
    );
  }
}
