import 'package:flutter/material.dart';

class AdminDashboard extends StatefulWidget {

  const AdminDashboard();

  @override
  _AdminDashboardState createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor:Colors.blueAccent,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text("Welcome Admin!",style: TextStyle(color: Colors.white,
              fontSize: 25.0,),),

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
      ),
    );
  }
}
