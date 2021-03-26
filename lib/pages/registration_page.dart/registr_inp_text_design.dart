import 'package:flutter/material.dart';
import 'package:kerek_app/constants/textStyle/textStyle.dart';

class RegistrInputText extends StatelessWidget {
  Icon icon;
  String text;
  RegistrInputText({this.icon, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 50,
      child: TextFormField(
        maxLines: 1,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 25),
          prefixIcon: icon,
          hintText: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        validator: (String value) {
          if (value.isEmpty || value.length > 12) {
            return 'Введите правильные данные';
          }
        },
        onSaved: (String value) {
          // _formData['name'] = value;
          print('saved');
        },
      ),
    );
  }
}
