import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greentaxi/title/app_colors.dart';
import 'package:greentaxi/widgets/green_intro_widget.dart';

import '../widgets/otp_verification_widget.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                greenIntroWidget(),
                Positioned(
                  top: 48,
                  left: 18,
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.arrow_back, color: AppColors.greenColor, size: 20,),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            optVerificationWidget(),
          ],
        ),
      ),
    );
  }
}



