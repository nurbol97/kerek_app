import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kerek_app/constants/colors/colorStyle.dart';
import 'package:kerek_app/pages/auth_page_master/entre_btn.design.dart';
import 'package:kerek_app/pages/auth_page_master/text_bottom_design.dart';
import 'package:kerek_app/pages/otp_page/otp_input_design.dart';

class InputForm extends StatelessWidget {
  String number = '+7 707 707 77 77';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 32, 16, 95),
      child: Column(
        children: <Widget>[
          Text(
            'Введите код из SMS',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontStyle: FontStyle.normal,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: ColorStyles.brand_black),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Мы отправили SMS-код на $number',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontStyle: FontStyle.normal,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorStyles.brand_grey),
            textAlign: TextAlign.center,
          ),
          Text(
            'введите его для подтверждения входа',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontStyle: FontStyle.normal,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorStyles.brand_grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 32,
          ),
          InputOtpDesign(),
          SizedBox(
            height: 16,
          ),
          EntreBtnDesign(),
          SizedBox(
            height: 32,
          ),
          EntreBottomTextDesign(),
        ],
      ),
    );
  }
}
