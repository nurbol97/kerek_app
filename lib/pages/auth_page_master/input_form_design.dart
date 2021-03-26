import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kerek_app/constants/btn_design/entreBtnOrange.dart';
import 'package:kerek_app/constants/colors/colorStyle.dart';
import 'package:kerek_app/constants/textStyle/textStyle.dart';

import 'package:kerek_app/pages/auth_page_master/input_phone_design.dart';
import 'package:kerek_app/pages/auth_page_master/text_bottom_design.dart';
import 'package:kerek_app/pages/otp_page/otp_page.dart';

class InputForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void openOtpPage() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => OtpPage(),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.fromLTRB(16, 64, 16, 64),
      child: Column(
        children: <Widget>[
          Text(
            'Добро пожаловать!',
            style: TextStyles.head_text_black,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Войти с помощью номера телефона',
            style: TextStyles.subtitle_grey,
          ),
          SizedBox(
            height: 32,
          ),
          InputPhoneDesign(),
          SizedBox(
            height: 16,
          ),
          EntreBtnDesignOrange(
            'Войти',
            openOtpPage,
          ),
          SizedBox(
            height: 32,
          ),
          EntreBottomTextDesign(),
        ],
      ),
    );
  }
}
