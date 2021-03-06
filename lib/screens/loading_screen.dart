import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override

  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void get_location()async
  {
    Position position = await Geolocator().getLastKnownPosition(desiredAccuracy: LocationAccuracy.low);
    print(position);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            get_location();

            //Get the current location
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
