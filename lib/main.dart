import 'package:flutter/material.dart';
import 'package:share_pref/Counter_sharepref.dart';
import 'package:share_pref/NameSize_Sharepref.dart';
import 'package:share_pref/Name_sharePref.dart';
import 'package:share_pref/OnlineCode.dart';
import 'package:share_pref/Share_pref.dart';
import 'package:share_pref/Sharepref_Colors.dart';
import 'package:share_pref/myCode.dart';
import 'package:share_pref/newfile.dart';



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
      home: NameSize(),
    );
  }
}
