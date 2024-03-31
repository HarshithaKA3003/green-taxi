import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greentaxi/title/app_constants.dart';
import 'package:greentaxi/views/otp_verification_screen.dart';
import 'package:greentaxi/widgets/text_widget.dart';

Widget loginWidget(CountryCode countryCode,Function onCountryChange){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        textWidget(text: AppConstants.helloNiceToMeetYou,fontSize: 12.0),
        textWidget(text: AppConstants.getMovingWithGreenTaxi,fontSize: 24,fontWeight: FontWeight.bold),
        const SizedBox(
          height: 40,
        ),
        Container(
          width: double.infinity,
          height:55,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ],
              borderRadius: BorderRadius.circular(8)
          ),
          child: Row(
            children: [
              Expanded(
                flex:1,
                child: InkWell(
                  onTap: ()=>onCountryChange(),
                  child: Container(
                    child: Row(
                      children: [
                        const SizedBox(width: 5,),
                        Expanded(
                          child:Container(
                            child: countryCode.flagImage(),
                          ),
                        ),
                        textWidget(text: countryCode.dialCode,fontSize: 14.0,fontWeight: FontWeight.bold),
                        //const SizedBox(width: 20,),
                        Icon(Icons.keyboard_arrow_down_rounded)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 1,
                height: 55,
                color:Colors.black.withOpacity(0.5),
              ),
              Expanded(
                flex:3,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    onTap: (){
                      Get.to(()=>OtpVerificationScreen());
                    },
                    decoration:InputDecoration(
                      hintStyle: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.normal),
                      hintText: AppConstants.enterMobileNumber,
                      border:InputBorder.none,
                    ) ,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: GoogleFonts.poppins(color: Colors.black,fontSize: 12.0),
              children: [
                TextSpan(
                  text: AppConstants.byCreating + " ",
                ),
                TextSpan(
                    text: AppConstants.termsOfService + " ",
                    style: GoogleFonts.poppins(fontWeight:FontWeight.bold)
                ),
                TextSpan(
                  text:"and"+ " ",
                ),
                TextSpan(
                    text: AppConstants.privacyPolicy + " ",
                    style: GoogleFonts.poppins(fontWeight:FontWeight.bold)
                ),

              ],
            ),
          ),
        ),
      ],
    ),
  );
}