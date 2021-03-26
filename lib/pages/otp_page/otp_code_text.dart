import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kerek_app/constants/colors/colorStyle.dart';

class ResendCodeOtpText extends StatefulWidget {
  @override
  _ResendCodeOtpTextState createState() => _ResendCodeOtpTextState();
}

class _ResendCodeOtpTextState extends State<ResendCodeOtpText> {
  bool _isVisible = true;
  void _toggle() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  TextStyle defaultStyle = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      fontFamily: 'Inter',
      color: ColorStyles.brand_orange);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isVisible,
      child: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Row(
          children: [
            Text('Получить код повторно через', style: defaultStyle),
            TweenAnimationBuilder(
              tween: Tween(begin: 30.0, end: 0.0),
              duration: Duration(seconds: 30),
              builder: (_, value, child) => Text(
                " ${value.toInt()} сек",
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter',
                    color: ColorStyles.brand_orange),
              ),
              onEnd: () {
                // print(deviceHeight);
                setState(() {
                  _toggle();
                });
              },
            ),
          ],
        ),
      ),
      replacement: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: 'Отправить код заново',
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    print('tapped');
                    _toggle();
                  },
                style: defaultStyle.copyWith(
                    decoration: TextDecoration.underline)),
          ],
        ),
      ),
      // replacement: ButtonTheme(
      //   shape: new RoundedRectangleBorder(
      //       borderRadius: new BorderRadius.circular(4.0)),
      //   minWidth: 153,
      //   height: 30,
      //   buttonColor: Colors.grey[200],
      //   child: RaisedButton(
      //     textColor: Colors.black,
      //     onPressed: () {
      //       _toggle();
      //       // PhoneVerify phoneVerify = new PhoneVerify(widget.phoneNumber);
      //       // phoneVerify.verifyPhone(widget.phoneNumber);
      //     },
      //     child: Container(
      //       child: Text(
      //         'Отправить код заново',
      //         style: TextStyle(
      //             fontSize: 14.0,
      //             fontWeight: FontWeight.w400,
      //             fontFamily: 'Inter',
      //             color: ColorStyles.brand_orange),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
