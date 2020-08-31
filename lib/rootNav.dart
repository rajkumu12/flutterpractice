import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpractice/Fragments/contactPage.dart';
import 'package:flutterpractice/Fragments/eventPage.dart';
import 'package:flutterpractice/Fragments/homePage.dart';
import 'package:flutterpractice/Fragments/notificationPage.dart';
import 'package:flutterpractice/Fragments/profilePage.dart';
import 'package:flutterpractice/pageRoute.dart';

class rootNav extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'NavigationDrawer Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:homePage(),
      routes:  {
        pageRoutes.home: (context) => homePage(),
        pageRoutes.contact: (context) => contactPage(),
        pageRoutes.event: (context) => eventPage(),
        pageRoutes.profile: (context) => profilePage(),
        pageRoutes.notification: (context) => notificationPage(),
      },
    );
  }
}