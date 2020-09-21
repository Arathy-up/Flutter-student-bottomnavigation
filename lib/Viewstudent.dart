import 'package:flutter/material.dart';
class Viewstudent extends StatefulWidget {
  @override
  _ViewstudentState createState() => _ViewstudentState();
}

class _ViewstudentState extends State<Viewstudent> {
  var Student = ["Abhijith R", "Abhiram S", "Arun Kumar", "Avani T N","Hari V S"];
  var admn = ["C12/19", "C34/19", "C56/19", "C789/19","D45/18"];
  var rollno = ["12", "21", "28", "31","41"];
  var college = [
    "SBCE-Pattoor",
    "BMC-Sasthamcotta",
    "CEC-Chengannur",
    "TKM-Kollam",
    "CET-TVM"
  ];
  var contact=["8281814824","9497864824","9447497336","8129467171","9875345210"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: Student.length,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                title: Text("Student's Name:"+Student[index]),
                subtitle: Text("Admn no:"+admn[index]+"\n"+"Roll No:"+rollno[index]+"\n"+"College:"+college[index]+"\n"+"Contact:"+contact[index]),
                leading: Icon(Icons.school),
                trailing:
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Student.removeAt(index);
                      admn.removeAt(index);
                      rollno.removeAt(index);
                      college.removeAt(index);
                      contact.removeAt(index);

                    });
                  },
                    child: Icon(Icons.delete)),
              ),
            );
          }),
    );
  }
}
