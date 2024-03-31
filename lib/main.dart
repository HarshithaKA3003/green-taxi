import 'package:flutter/material.dart';
import 'package:greentaxi/views/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme=Theme.of(context).textTheme;
    return GetMaterialApp(
      theme:ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(textTheme),
      ),
      home:const LoginScreen(),
    );
  }
}

