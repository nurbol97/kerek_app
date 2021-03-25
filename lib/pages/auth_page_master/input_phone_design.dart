import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerek_app/constants/colors/colorStyle.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputPhoneDesign extends StatelessWidget {
  var maskFormatter = new MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##', filter: {"#": RegExp(r'[0-9]')});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 2),
      width: 328,
      height: 50,
      child: TextFormField(
        maxLines: 1,
        validator: (String value) {
          if (value.isEmpty || value.length < 18)
            return 'Пожалуйста введите верный номер телефона';
        },
        keyboardType: TextInputType.phone,
        inputFormatters: [maskFormatter],
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 10),
          prefixIcon: Image.asset(
            'assets/img/flags/flag-kazakhstan.png',
            height: 32,
            width: 32,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: '+7 (__) ___-__-__',
          //labelText: '',
        ),
      ),
    );
  }
}
