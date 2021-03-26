import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kerek_app/constants/colors/colorStyle.dart';

class EntreBtnDesignMilk extends StatelessWidget {
  String text;
  EntreBtnDesignMilk(this.text);
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(25.0)),
      minWidth: 328,
      height: 50,
      buttonColor: ColorStyles.brand_milk_color,
      child: RaisedButton(
        elevation: 0,
        disabledTextColor: Colors.white,
        textColor: ColorStyles.brand_orange,
        onPressed: () => null,
        child: Container(
          child: Text(
            text,
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
