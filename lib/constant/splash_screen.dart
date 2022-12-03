import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_design/loginScreen.dart';

class SplashScareen extends StatefulWidget {
  const SplashScareen({Key? key}) : super(key: key);



  @override
  State<SplashScareen> createState() => _SplaskScareenState();
}

class _SplaskScareenState extends State<SplashScareen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),
            (){
          if(kDebugMode){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
          }
        },
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child:CircularProgressIndicator(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
