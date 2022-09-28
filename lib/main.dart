import 'package:flutter/material.dart';
import 'package:wallet/Util/home_page.dart';
import 'package:wallet/Util/myscroll.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(), home: HomePage());
  }
}
