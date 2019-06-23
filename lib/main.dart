import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _title = 'App Bar Demo';
  String _myState = 'NO STATE';

  void _pressed(String message) {
    setState(() {
      _myState = message;
    });
    // WRONG
    //_myState = message;
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add_alert), onPressed: () {_pressed('Alert Pressed');}),
            IconButton(icon: Icon(Icons.print), onPressed: () {_pressed('Print Pressed');}),
            IconButton(icon: Icon(Icons.people), onPressed: () {_pressed('People Pressed');}),
            RaisedButton(child: Text('Button'), onPressed: () {_pressed('SUPER');}),
    //Text('lalalala'),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(32.0),
            child: Center(
              child: Text(_myState),
        ),
        ),
      ),
    );
  }



}
