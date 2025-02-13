import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class RoundedWithShadow extends StatefulWidget {
  const RoundedWithShadow({super.key});

  @override
  State<RoundedWithShadow> createState() => _RoundedWithShadowState();

  @override
  String toStringShort()=>'Rounded With Shadow';
}

class _RoundedWithShadowState extends State<RoundedWithShadow> {
  final controller=TextEditingController();
  final focusNode=FocusNode();

  @override
  void dispose(){
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme= PinTheme(
      width:65,
      height:150,
      textStyle: GoogleFonts.poppins(
          fontSize:20,color:Color.fromRGBO(70,69,66,1)),
      decoration: BoxDecoration(
        color:Color.fromRGBO(232,235,241,8.37),
        borderRadius:BorderRadius.circular(12),
      ),
    );

    final cursor=Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width:21,
          height:2,
          margin: EdgeInsets.only(bottom:12),
          decoration: BoxDecoration(
            color: Color.fromRGBO(137, 146, 160, 1),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
    return Pinput(
      length:5,
      controller: controller,
      focusNode:focusNode,
      defaultPinTheme: defaultPinTheme.copyWith(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0,0,0,0.05999999865889549),
              offset: Offset(0,3),
              blurRadius:16,
            )
          ],
        ),
      ),
      focusedPinTheme: defaultPinTheme.copyWith(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0,0,0,0.05999999865889549),
              offset: Offset(0,3),
              blurRadius:16,
            )
          ],
        ),
      ),
      showCursor: true,
      cursor: cursor,
    );
  }
}
