import 'package:flutter/material.dart';
import 'package:login_design/loginScreen.dart';
import 'package:login_design/provider/login_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: ( ctx) {
    return LoginProvider();
  },
      child: MyApp()));}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      
    );
  }
}
