import 'package:flutter/material.dart';
import './model.dart';

// ignore: must_be_immutable
class Profile extends StatelessWidget {
  Model model;
  Profile({required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.blue[400],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/hng8-image.png'),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              model.firstName + ' ' + model.lastName,
              style: TextStyle(
                fontFamily: 'Lobster',
                fontSize: 45.0,
                color: Colors.white,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              model.occupation,
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 20.0,
              width: 170.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  model.phoneNumber,
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  model.email,
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
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
