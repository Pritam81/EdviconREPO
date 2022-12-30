// ignore_for_file: sort_child_properties_last

// ignore: import_of_legacy_library_into_null_safe
//import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'login_Page',
      home: Loginpage(),
    );
  }
}

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: ListView(
        children: <Widget>[
          nametext(),
          SizedBox(
            height: 15,
          ),
          rolltext(),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 15,
          ),
          //sem(),
        ],
      ),
    ));
  }
}

Widget nametext() {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(255, 13, 33, 185),
        ),
      ),
      prefixIcon: Icon(
        Icons.person,
        color: Colors.green,
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange, width: 2)),
      labelText: "NAME",
      hintText: "Eg : Pritam STP",
    ),
  );
}

Widget rolltext() {
  return TextFormField(
    decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 13, 33, 185),
          ),
        ),
        prefixIcon: Icon(
          Icons.numbers,
          color: Colors.green,
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange, width: 2)),
        labelText: "Registration No",
        hintText: "Eg : 21CSEC14 / 21CVLC17"),
  );
}

