import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textWidget({required String text,double fontSize=12.0,FontWeight fontWeight=FontWeight.normal}){
  return Text(text,style: GoogleFonts.poppins(fontSize:fontSize,fontWeight:fontWeight),);
}