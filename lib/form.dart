import 'package:display_info_app/profile.dart';
import 'package:flutter/material.dart';
import 'model.dart';
import 'profile.dart';
import 'extensions.dart';

class DisplayInfoApp extends StatefulWidget {
  const DisplayInfoApp({Key? key}) : super(key: key);

  @override
  _DisplayInfoAppState createState() => _DisplayInfoAppState();
}

class _DisplayInfoAppState extends State<DisplayInfoApp> {
  final _formKey = GlobalKey<FormState>();
  // final Function validator;
  Model model = Model(
      firstName: '', lastName: '', occupation: '', email: '', phoneNumber: '');

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Firstname',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid firstname';
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      setState(() {
                        model.firstName = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Lastname'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid name';
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      setState(() {
                        model.lastName = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Occupation',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                } else {
                  return null;
                }
              },
              onChanged: (value) {
                setState(() {
                  model.occupation = value;
                });
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
              validator: (value) {
                if (value!.isValidEmail) {
                  return null;
                } else {
                  return 'Please enter a valid email';
                }
              },
              onChanged: (value) {
                setState(() {
                  model.email = value;
                });
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone Number',
              ),
              validator: (value) {
                if (value!.isValidPhone) {
                  return null;
                } else {
                  return 'Please enter your phone number';
                }
              },
              onChanged: (value) {
                setState(() {
                  model.phoneNumber = value;
                });
              },
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              child: Text('Submit'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Profile(
                      model: Model(
                          firstName: model.firstName,
                          lastName: model.lastName,
                          occupation: model.occupation,
                          email: model.email,
                          phoneNumber: model.phoneNumber),
                    );
                  }));
                } else {}
              },
            ),
          ],
        ));
  }
}

// Validate textfields first
// Pass data from textfields to the profile page and populate the texts
