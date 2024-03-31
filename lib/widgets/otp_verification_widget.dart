import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greentaxi/title/app_constants.dart';
import 'package:greentaxi/views/otp_verification_screen.dart';
import 'package:greentaxi/widgets/pinput_widget.dart';
import 'package:greentaxi/widgets/text_widget.dart';

Widget optVerificationWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        textWidget(text: AppConstants.phoneVerification, fontSize: 12.0),
        textWidget(text: AppConstants.enterOtp,
            fontSize: 24,
            fontWeight: FontWeight.bold),
        const SizedBox(
          height: 40,
        ),
        Container(
            width: Get.width,
            height: 50,
            child: RoundedWithShadow()
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            children: [
              RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 12.0),
                  children: [
                    TextSpan(
                      text: AppConstants.resendCode+ " ",
                    ),
                    TextSpan(
                        text: "10 seconds",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold)
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