import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kerek_app/constants/btn_design/entreBtnMilk.dart';
import 'package:kerek_app/constants/btn_design/entreBtnOrange.dart';
import 'package:kerek_app/constants/colors/colorStyle.dart';
import 'package:kerek_app/constants/textStyle/textStyle.dart';

import 'package:kerek_app/pages/otp_page/otp_code_text.dart';
import 'package:kerek_app/pages/otp_page/otp_input_design.dart';

class InputOtpForm extends StatelessWidget {
  String number = '+7 707 707 77 77';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 48, 16, 45),
      child: Column(
        children: <Widget>[
          Text(
            'Введите код из SMS',
            style: TextStyles.head_small16_black,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Мы отправили SMS-код на $number',
            style: TextStyles.subtitle_grey,
            textAlign: TextAlign.center,
          ),
          Text(
            'введите его для подтверждения входа',
            style: TextStyles.subtitle_grey,
            textAlign: TextAlign.center,
          ),
          InputOtpDesign(),
          ResendCodeOtpText(),
          SizedBox(
            height: 16,
          ),
          EntreBtnDesignOrange('Далее'),
          SizedBox(
            height: 8,
          ),
          EntreBtnDesignMilk('Назад'),
        ],
      ),
    );
  }
}
