import 'package:flutter/material.dart';
import 'package:kerek_app/pages/registration_page.dart/registrationFormDesign.dart';

class RegistrationPage extends StatelessWidget {
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
            //padding: EdgeInsets.all(10.0),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 175),
                Container(
                  alignment: Alignment.bottomCenter,
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
                  child: RegistrationForm(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
