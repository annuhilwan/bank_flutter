import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bank/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage ({Key?key}) : super(key: key);
 
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>{

  @override
  void initState() {
    //todo: implement initstate
    super.initState();

    Timer(const Duration(seconds: 2),(){
     Navigator.pushNamed(context, '/onboarding');
      });
  }


@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Container(
          width: 155,
          height: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/img_logo_dark.png'
              )
            )
            ),
        ),
      ),
    );
  }
}