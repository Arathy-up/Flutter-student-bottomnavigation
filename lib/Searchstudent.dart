import 'package:flutter/material.dart';
class Searchstudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height:5.0),
          TextField(
            style: TextStyle(color: Colors.blue),
            decoration: InputDecoration(
              hintText: "Enter Student's Name",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height:5.0),
          RaisedButton(onPressed: (){},
          child: Text("SUBMIT"),)
        ],
      ),
    );
  }
}
