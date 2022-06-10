import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 222, 222),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 60, 10, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios, size: 32.0)),
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.highlight_off, size: 32.0)),
              ],
            ),
          ),

          // 1 portion
          Padding(
            padding: const EdgeInsets.fromLTRB(60, 210, 60, 15),
            child: Card(
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                height: 50,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
                  child: Text(
                    "Meet Patel",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // 2 portion
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
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 0, 0),
                  child: Text(
                    "Jr. Software Developer",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 260, 10, 0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 2,
                ),
              ),
              Row(
                // Spacing
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Book Seat Page Navigator
                  GestureDetector(
                    child: Column(
                      children: [
                        Icon(
                          Icons.airline_seat_recline_extra_rounded,
                          size: 35,
                        ),
                        Text("Book Seat")
                      ],
                    ),
                  ),

                  //Divider

                  Container(
                    height: 60,
                    width: 2,
                    color: Colors.grey,
                  ),

                  // My Account

                  GestureDetector(
                    child: Column(
                      children: [
                        Icon(
                          Icons.account_circle,
                          size: 35,
                        ),
                        Text("Account")
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
