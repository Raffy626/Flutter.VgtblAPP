import 'package:flutter/material.dart';
import 'package:login_page/loginPage.dart';
import 'package:login_page/Register.dart';
import 'package:login_page/homePage.dart';
import 'package:login_page/favorite.dart';
import 'package:login_page/Detail.dart';
import 'package:login_page/CRUD2.dart';
import 'package:login_page/splash.dart';
import 'package:login_page/transaksi.dart';
import 'package:login_page/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Rute awal
      routes: {
        '/': (context) => const Splash(),
        '/loginPage': (context) => const loginPage(),
        '/register': (context) => const Register(),
        '/home': (context) => HomePage(),
        '/favorite': (context) => Favorite(),
        '/detail': (context) => const Detail(),
        '/crud': (context) => const Crud2(),
        '/transaksi': (context) => const Transaksi(),
        '/profile': (context) => Profile(),
      },
    );
  }
}