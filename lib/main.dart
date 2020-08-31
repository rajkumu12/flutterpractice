import 'package:flutter/material.dart';
import 'package:flutterpractice/navigatinDraw.dart';
import 'package:flutterpractice/rootNav.dart';

void main() => runApp(MaterialApp(title: "RaisedButton", home: MainActivity()));
class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}
class _MainActivityState extends State {
  String msg = 'Flutter RaisedButton example';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text('Raised Button'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                msg,
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
              RaisedButton(
                child: Text("Navigation drawer"),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => rootNav()));
                },
                color: Colors.red,
                textColor: Colors.yellow,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                splashColor: Colors.grey,
              ),
              RaisedButton(
                child: Text("Rock & Roll"),
                onPressed: _changeText,
                color: Colors.red,
                textColor: Colors.yellow,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                splashColor: Colors.grey,
              ),
              RaisedButton(
                child: Text("Rock & Roll"),
                onPressed: _changeText,
                color: Colors.red,
                textColor: Colors.yellow,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                splashColor: Colors.grey,
              ),
              RaisedButton(
                child: Text("Rock & Roll"),
                onPressed: _changeText,
                color: Colors.red,
                textColor: Colors.yellow,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                splashColor: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
  _changeText() {
    setState(() {
      if (msg.startsWith('F')) {
        msg = 'I have learned FlutterRaised example ';
      } else {
        msg = 'Flutter RaisedButton example';
      }
    });
  }
}