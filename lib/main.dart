import 'package:flutter/material.dart';
import 'package:kerek_app/pages/auth_page_master/auth_page.dart';
import 'package:kerek_app/pages/countries_page/countries_page.dart';
import 'package:kerek_app/pages/otp_page/otp_pade.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid: true,
      theme: ThemeData(
        brightness: Brightness.light,
        // primarySwatch: Colors.black,
        // accentColor: Colors.grey,
        // buttonColor: Colors.deepPurple,
      ),

      // home: AuthPage(),
      routes: {
        '/auth': (BuildContext context) => AuthPageMaster(),
        '/countries': (BuildContext context) => CountriesPage(),
        '/otp': (BuildContext context) => OtpPage(),
      },

      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context) => OtpPage());
      },
    );
  }
}
