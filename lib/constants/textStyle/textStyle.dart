import 'package:flutter/material.dart';
import 'package:kerek_app/constants/colors/colorStyle.dart';

class TextStyles {
  static const TextStyle head_text_black = TextStyle(
      fontFamily: 'Roboto',
      fontStyle: FontStyle.normal,
      fontSize: 30,
      fontWeight: FontWeight.w500,
      color: ColorStyles.brand_black);

  static const TextStyle subtitle_grey = TextStyle(
      fontFamily: 'Roboto',
      fontStyle: FontStyle.normal,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorStyles.brand_grey);

  static const TextStyle head_small16_black = TextStyle(
      fontFamily: 'Roboto',
      fontStyle: FontStyle.normal,
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: ColorStyles.brand_black);
  static const brand_milk_color = Color(0xFFF1F0EC);
}
