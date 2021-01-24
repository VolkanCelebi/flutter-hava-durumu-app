import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hava_durumu_app_v1/utils/weather.dart';

class MainScreen extends StatefulWidget {

  final WeatherData weatherData;

  MainScreen({@required this.weatherData});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int temperature;
  Icon weatherDisplayIcon;
  AssetImage backgroundImage;
  String city;
  void updateDisplayInfo(WeatherData weatherData){
  setState(() {
    temperature = weatherData.currentTemperature.round();
    city = weatherData.city;
    WeatherDisplayData weatherDisplayData = weatherData.getWeatherDisplayData();
    backgroundImage = weatherDisplayData.weatherImage;
    weatherDisplayIcon = weatherDisplayData.weatherIcon;
  });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateDisplayInfo(widget.weatherData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: backgroundImage,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40,),
            Container(
              child: weatherDisplayIcon,
            ),
            SizedBox(height: 15,),
            Center(
              child: Text('$temperature°',
              style: TextStyle(
                color: Colors.white,
                fontSize: 80.0,
                letterSpacing: -5
              ),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Text(city,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    letterSpacing: -5
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
