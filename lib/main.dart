import 'package:demo/app/dashboard/dashboard_widget.dart';
import 'package:demo/app/initial/first.dart';
import 'package:demo/app/initial/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
      return MaterialApp(debugShowCheckedModeBanner: false,
      home: FrontPage());

  }
}
