import 'package:flutter/material.dart';

class BookSeatPage extends StatefulWidget {
  const BookSeatPage({Key? key}) : super(key: key);

  @override
  _BookSeatPageState createState() => _BookSeatPageState();
}

class _BookSeatPageState extends State<BookSeatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 222, 222),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 60, 10, 20),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios, size: 32.0)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(55, 0, 0, 0),
                  child: Text("Book Seat",style: TextStyle(fontSize: 45,color:Colors.grey[600]),),
                ),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15,50,0,0),
                  child: Container(
                    height: 110,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(35),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(30,0,0,0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25,25,0,10),
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(35),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25,25,0,10),
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(35),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25,25,0,10),
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(35),
                          ),
                        ),
                      ),

                      // Create Time Selection
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25,25,0,10),
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.fromLTRB(3,100,0,0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25,25,0,10),
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25,25,0,10),
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(35),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25,25,0,10),
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35),
                          ),
                        ),
                      ),

                      // Tooltip for MEET

                      MyTooltip(
                        message: 'Meet',
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(25,25,0,10),
                          child: Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],

            ),
          ),
        ],
      ),
    );
  }
}


class MyTooltip extends StatelessWidget {
  final Widget child;
  final String message;

  MyTooltip({required this.message, required this.child});

  @override
  Widget build(BuildContext context) {
    final key = GlobalKey<State<Tooltip>>();
    return Tooltip(
      key: key,
      message: message,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => _onTap(key),
        child: child,
      ),
    );
  }

  void _onTap(GlobalKey key) {
    final dynamic tooltip = key.currentState;
    tooltip?.ensureTooltipVisible();
  }
}