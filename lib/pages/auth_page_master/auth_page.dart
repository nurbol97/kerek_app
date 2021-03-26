import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'input_form_design.dart';

class AuthPageMaster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: GestureDetector(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/background_auth.png'),
              ),
            ),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 105),
                Container(
                  child: SvgPicture.asset(
                    'assets/img/kerek_logo.svg',
                    width: 154,
                    height: 137,
                  ),
                ),
                SizedBox(height: 130),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      )),
                  child: InputForm(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
