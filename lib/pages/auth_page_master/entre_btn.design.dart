import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kerek_app/constants/colors/colorStyle.dart';
import 'package:kerek_app/pages/auth_page_master/input_phone_design.dart';

class EntreBtnDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(25.0)),
      minWidth: 328,
      height: 50,
      buttonColor: ColorStyles.brand_orange,
      child: RaisedButton(
        disabledTextColor: Colors.white,
        textColor: Colors.white,
        onPressed: () => null,
        child: Container(
          child: Text(
            'Войти',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Roboto'),
          ),
        ),
      ),
    );
  }
}
