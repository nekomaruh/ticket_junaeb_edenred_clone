import 'package:flutter/material.dart';
import 'package:ticketjunaebedenredclone/welcome_page.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromRGBO(118,50,136,1),
        secondaryHeaderColor: Color.fromRGBO(183, 142, 195, 1),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.transparent
        )
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomePage()
    );
  }
}
