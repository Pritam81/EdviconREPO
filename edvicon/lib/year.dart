// ignore_for_file: file_names

import 'package:edvicon/pageone.dart';
import 'package:edvicon/pagetwo.dart';
import 'package:edvicon/pagethree.dart';
import 'package:edvicon/pagefour.dart';
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
      title: "Homepage",
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 139, 164),
      appBar: AppBar(
        elevation: 20,
        shadowColor: Color.fromARGB(255, 7, 227, 14),

        centerTitle: true,
        title: Text(
          "Edvicon",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 25,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 32, 154, 161),
        //   icon: const Icon(Icons.menu),
        //   tooltip: 'Menu',
        //   onPressed: () {},
        // ),
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   tooltip: 'home',
        //   iconSize: 35,
        //   color: Colors.white,
        //   onPressed: () {},
        // ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            iconSize: 23,
            tooltip: 'Comment',
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message),
            iconSize: 23,
            tooltip: 'Search',
          ) //IconButton
        ],
      ),
      drawer: Drawer(),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 22,
            child: InkWell(
              onTap: () => {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Pageone()))
              },
              child: Container(
                margin: EdgeInsets.all(30),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 59, 166, 171)),
                child: Text(
                  "1st Year",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 22,
            child: InkWell(
              onTap: () => {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Pagetwo()))
              },
              child: Container(
                margin: EdgeInsets.all(30),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 59, 166, 171)),
                child: Text(
                  "2nd Year",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 22,
            child: InkWell(
              onTap: () => {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Pagethree()))
              },
              child: Container(
                margin: EdgeInsets.all(30),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 59, 166, 171)),
                child: Text(
                  "3rd Year",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 22,
              child: InkWell(
                  onTap: () => {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => Pagefour()))
                      },
                  child: Container(
                    margin: EdgeInsets.all(30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 59, 166, 171)),
                    child: Text(
                      "4th Year",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 82, 0, 0),
                      ),
                    ),
                  )))
        ],
      ),
    );
  }
}
