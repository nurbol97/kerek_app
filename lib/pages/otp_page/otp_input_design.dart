import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:sms_autofill/sms_autofill.dart';

class InputOtpDesign extends StatelessWidget {
  String otpCode;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      child: PinFieldAutoFill(
        controller: textEditingController,
        decoration: UnderlineDecoration(
          textStyle: TextStyle(fontSize: 20, color: Colors.black),
          colorBuilder: FixedColorBuilder(Colors.black),
        ),
        codeLength: 6,
        onCodeSubmitted: (val) {
          otpCode = val;
          // setState(() {
          //   if (otpCode.length > 3) {
          //     _btnActive = true;
          //   } else {
          //     _btnActive = false;
          //   }
          // });
        },
        onCodeChanged: (val) {
          print(val);
        },
        currentCode: otpCode,
      ),
    );
  }
}
