import 'package:flutter/material.dart';

class EmployeeDashboard extends StatefulWidget {

  const EmployeeDashboard(
      {Key? key,
      })
      : super(key: key);

  @override
  _EmployeeDashboardState createState() => _EmployeeDashboardState();
}

class _EmployeeDashboardState extends State<EmployeeDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor:Colors.green.shade900 ,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text("Welcome Employee!",style: TextStyle(color: Colors.white,
            fontSize: 25.0)),
            SizedBox(
              height: 50,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/avatar.jpeg'),
                radius: 70,
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
