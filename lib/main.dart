import 'package:flutter/material.dart';
import 'package:mi_card/page1.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.teal,
            scaffoldBackgroundColor: Color(0xff00020A),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
       home: PAGE1(),
    );
  }
}
