import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  late String role;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag:"logo",
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height:80.0,
                    alignment: Alignment.center,
                  ),
                ),
                Text(
                  'Xfortech',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF0A1245),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      role="Admin";
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen(role:"Admin")),
                    );
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Admin',
                    style:TextStyle(
                      fontSize:20.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      role="Manager";
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen(role:"Manager")),
                    );
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Manager',
                    style:TextStyle(
                      fontSize: 20.0,
                    ) ,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      role="Employee";
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen(role:"Employee")),
                    );
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Employee',
                    style:TextStyle(
                      fontSize: 20.0,
                    ) ,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
