// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 222, 222),
      body: Container(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/lpage');
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Text(
                  "BORA",
                  style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(145, 0, 0, 0),
                child: Text(
                  "BORA",
                  style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
          child: Image(
              width: 100,
              height: 150,
              image: AssetImage("assets/images/motadata-logo.png"))),
    );
  }
}
