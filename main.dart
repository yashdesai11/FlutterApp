import 'package:flutter/material.dart';
import 'accountpage.dart';
import 'bookseatpage.dart';
import 'firstpage.dart';
import 'homepage.dart';
import 'loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/fpage',
      routes: {
        '/fpage': (context) => const FirstPage(),
        '/lpage': (context) => const LoginPage(),
        '/hpage': (context) => const HomePage(),
        '/apage': (context) => const AccountPage(),
        '/bspage':(context)=> const BookSeatPage(),
      },
    );
  }
}
