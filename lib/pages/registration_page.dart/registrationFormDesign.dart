import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kerek_app/constants/btn_design/entreBtnMilk.dart';
import 'package:kerek_app/constants/btn_design/entreBtnOrange.dart';
import 'package:kerek_app/constants/colors/colorStyle.dart';
import 'package:kerek_app/constants/textStyle/textStyle.dart';

import 'package:kerek_app/pages/otp_page/otp_code_text.dart';
import 'package:kerek_app/pages/otp_page/otp_input_design.dart';
import 'package:kerek_app/pages/registration_page.dart/avatar_design.dart';

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 48, 16, 45),
      child: Column(
        children: <Widget>[
          Text(
            'Регистрация',
            style: TextStyles.head_text_black,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Добавьте свое фото и заполните данные',
            style: TextStyles.subtitle_grey,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 16,
          ),
          AvatarDesign(),
          SizedBox(
            height: 16,
          ),
          EntreBtnDesignOrange('Сохранить'),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
