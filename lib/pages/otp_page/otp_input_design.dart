import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:sms_autofill/sms_autofill.dart';

class InputOtpDesign extends StatefulWidget {
  @override
  _InputOtpDesignState createState() => _InputOtpDesignState();
}

class _InputOtpDesignState extends State<InputOtpDesign> {
  void initState() {
    super.initState();
    _listOPT();
  }

  _listOPT() async {
    await SmsAutoFill().listenForCode;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(80, 25, 76, 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: PinFieldAutoFill(
                decoration: UnderlineDecoration(
                  textStyle: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    fontFamily: 'Roboto',
                  ),
                  colorBuilder:
                      FixedColorBuilder(Colors.black.withOpacity(0.3)),
                ),
                codeLength: 6,
                onCodeSubmitted: (code) {},
                onCodeChanged: (code) {
                  if (code.length == 6) {
                    FocusScope.of(context).requestFocus(FocusNode());
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
