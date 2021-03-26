import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerek_app/constants/btn_design/entreBtnOrange.dart';
import 'package:kerek_app/constants/btn_design/smallEntreBtnOrange.dart';
import 'package:kerek_app/constants/colors/colorStyle.dart';
import 'package:kerek_app/constants/icons/kerek_app_icons_icons.dart';
import 'package:kerek_app/constants/textStyle/textStyle.dart';

import 'package:kerek_app/pages/registration_page.dart/avatar_design.dart';
import 'package:kerek_app/pages/registration_page.dart/registr_inp_text_design.dart';

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void backFunction() {
      Navigator.of(context).pop();
    }

    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SvgPicture.asset('assets/img/salut.svg'),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Спасибо за регистрацию!',
                    style: TextStyles.head_small16_black
                        .copyWith(fontWeight: FontWeight.w600, height: 1.5),
                  ),
                  Text(
                    'Мы дарим Вам',
                    style: TextStyles.head_small16_black
                        .copyWith(fontWeight: FontWeight.w600, height: 1.5),
                  ),
                  Text(
                    '500 привественных бонусов!!',
                    style: TextStyles.head_small16_black
                        .copyWith(fontWeight: FontWeight.w600, height: 1.5),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SmallEntreBtnOrange(
                    'Хорошо',
                    backFunction,
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

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
          Column(
            children: <Widget>[
              RegistrInputText(
                  icon: Icon(
                    KerekAppIcons.user,
                    size: 20,
                  ),
                  text: 'Имя'),
              SizedBox(
                height: 7,
              ),
              RegistrInputText(
                  icon: Icon(
                    Icons.circle,
                    size: 14,
                  ),
                  text: 'Фамилия'),
              SizedBox(
                height: 7,
              ),
              RegistrInputText(
                  icon: Icon(
                    KerekAppIcons.calendar,
                    size: 18,
                  ),
                  text: 'Дата рождения'),
              SizedBox(
                height: 7,
              ),
              RegistrInputText(
                  icon: Icon(
                    KerekAppIcons.map_pin,
                    size: 22,
                  ),
                  text: 'Город'),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          EntreBtnDesignOrange(
            'Сохранить',
            _showMyDialog,
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
