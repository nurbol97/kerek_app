import 'package:flutter/material.dart';
import 'package:kerek_app/constants/colors/colorStyle.dart';
import 'package:kerek_app/models/CountriesModel.dart';

class CountriesPage extends StatelessWidget {
  final List<CountriesModel> _allCountries = CountriesModel.allCountries();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: ColorStyles.brand_grey),
            onPressed: () => Navigator.of(context).pop(),
          ),
          titleSpacing: 80,
          backgroundColor: Colors.white,
          title: Text(
            'Выберите страну',
            style: TextStyle(
              color: ColorStyles.brand_black,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: ListView.builder(
            itemCount: _allCountries.length,
            itemBuilder: _getItemUI,
          ),
        ),
      ),
    );
  }

  Widget _getItemUI(BuildContext context, int index) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Image.asset(
              "assets/img/flags/" + _allCountries[index].image,
              fit: BoxFit.cover,
              width: 25.0,
              height: 18,
            ),
          ),
          title: Align(
            alignment: Alignment(-1.1, 0),
            child: Text(
              _allCountries[index].name,
              style: new TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'),
            ),
          ),
          trailing: Text(
            _allCountries[index].phoneCode,
            style: new TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: ColorStyles.brand_grey),
          ),
          onTap: () {
            // _showSnackBar(context, _allCities[index]);
            print('tapped');
          },
        ),
      ],
    );
  }
}
