class CountriesModel {
  final int id;
  final String name;
  final String phoneCode;
  final String image;

  CountriesModel({this.id, this.name, this.phoneCode, this.image});

  static List<CountriesModel> allCountries() {
    var listOfCoutnries = new List<CountriesModel>();

    listOfCoutnries.add(new CountriesModel(
        id: 1, name: "Казахстан", phoneCode: "+7", image: "kazakhstan.png"));
    listOfCoutnries.add(new CountriesModel(
        id: 2, name: "Киргизия", phoneCode: "+996", image: "kyrgyzstan.png"));
    listOfCoutnries.add(new CountriesModel(
        id: 3, name: "Россия", phoneCode: "+7", image: "russia.png"));
    listOfCoutnries.add(new CountriesModel(
        id: 4, name: "Узбекистан", phoneCode: "+998", image: "uzbekistan.png"));

    return listOfCoutnries;
  }
}
