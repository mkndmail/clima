import 'package:flutter/cupertino.dart';

class MyUrl {
  static const _kAppKey = "d308e5e14dbc3fd2a382dac555ed5af9";
  static const _kOpenMapURL = 'https://api.openweathermap.org/data/2.5/weather';

  String getWeatherByCoordinates(
      {@required double latitude, @required double longitude}) {
    return '$_kOpenMapURL?lat=$latitude&lon=$longitude&units=metric&appid=$_kAppKey';
  }

  String getWeatherDataByCityName({@required String cityName}) {
    return '$_kOpenMapURL?q=$cityName&units=metric&appid=$_kAppKey';
  }
}
