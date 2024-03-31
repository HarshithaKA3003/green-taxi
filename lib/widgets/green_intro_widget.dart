import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget greenIntroWidget(){
  return Container(
    width:Get.width,
    decoration: const BoxDecoration(
      image: DecorationImage(
          image:AssetImage('assets/leaf1.jpg'),
          fit:BoxFit.cover
      ),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20.0),
        bottomRight: Radius.circular(20.0),
      ),
    ),
    height:Get.height*0.5,
    child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image:AssetImage('assets/leaf.jpg'),
          width:100,
          height:100,
        ),
        const SizedBox(
          height:0.6,
        ),
        Text(
          'GREEN TAXI',
          style: TextStyle(
            color:Colors.white,
            fontSize:50.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}