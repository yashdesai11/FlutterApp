import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 222, 222),

      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Icon( Icons.question_mark_outlined,
                size : 55.0),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(50, 200, 0,10),
            child: Row(
              children: [
                Text("You\nHavent\nBooked\nYour\nSeat",
                  style:TextStyle(
                      height: 0.8,
                    fontSize: 65,
                      fontWeight: FontWeight. bold
                  ) ,),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(55, 0, 0,5),
            child: Row(
              children: [
                Text("11:30:11 AM",style: TextStyle(fontSize: 30),),
              ],
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 110, 10,0),
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
                    onTap: (){
                      Navigator.pushNamed(context, '/bspage');
                    },
                    child: Column(
                      children: [
                        Icon(Icons.airline_seat_recline_extra_rounded,size: 35,),
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
                    onTap: (){
                      Navigator.pushNamed(context, '/apage');
                    },
                    child: Column(
                      children: [
                        Icon(Icons.account_circle,size: 35,),
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
