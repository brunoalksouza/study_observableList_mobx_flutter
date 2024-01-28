import 'package:flutter/material.dart';
import 'package:observablelist_mobx_flutter/app/pages/home/home_page.dart';
import 'package:observablelist_mobx_flutter/app/pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
