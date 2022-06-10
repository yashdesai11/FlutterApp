import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 222, 222),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 1 portion

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(55, 0, 0, 0),
                  child: Text(
                    "Username",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 15),
              child: Card(
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  height: 50,
                  width: 300,
                ),
              ),
            ),

            // 2 portion

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(55, 0, 0, 0),
                  child: Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 20),
              child: Card(
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  height: 50,
                  width: 300,
                ),
              ),
            ),

            // Login
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/hpage');
              },
              child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "Login",
                  style: TextStyle(fontSize: 28, color: Colors.white),
                )),
              ),
            ),
          ],
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
