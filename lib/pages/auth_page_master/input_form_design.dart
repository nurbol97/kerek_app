import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kerek_app/constants/colors/colorStyle.dart';
import 'package:kerek_app/pages/auth_page_master/entre_btn.design.dart';
import 'package:kerek_app/pages/auth_page_master/input_phone_design.dart';
import 'package:kerek_app/pages/auth_page_master/text_bottom_design.dart';

class InputForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 32, 16, 100),
      child: Column(
        children: <Widget>[
          Text(
            'Добро пожаловать!',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontStyle: FontStyle.normal,
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: ColorStyles.brand_black),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Войти с помощью номера телефона',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontStyle: FontStyle.normal,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorStyles.brand_grey),
          ),
          SizedBox(
            height: 32,
          ),
          InputPhoneDesign(),
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
