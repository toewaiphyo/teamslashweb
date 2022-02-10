import 'package:firebase_core_web/firebase_core_web_interop.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:slash_website/blocks/WelcomeBlock.dart';
import 'package:slash_website/scrollAction/AppScrollBehavior.dart';
import 'package:slash_website/utils/Constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: AppScrollBehavior(),
      title: 'Slash Myanmar',
      theme: ThemeData(
        primaryColor: Constants.primaryColor,
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      builder: (context,widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        breakpoints: [
          ResponsiveBreakpoint.resize(480,name: MOBILE),
          ResponsiveBreakpoint.resize(800,name: TABLET),
          ResponsiveBreakpoint.resize(1000,name: DESKTOP),
          ResponsiveBreakpoint.resize(1700,name: 'XL'),

        ],
      ),
      home: Scaffold(
        appBar: new AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Image.asset("assets/img/logo.png"),
          actions: [
            TextButton(onPressed: (){

            }, child: Text("CONTACT",style: Constants.normalStyle,),
            ),
            SizedBox(width: 5,),
            MaterialButton(onPressed: (){
              
            },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset("assets/icons/menu_icon.png",
                  width: 20,
                  height: 20,
                ),
              ),
              minWidth: 65,
              color: Constants.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)
              ),
            ),
            SizedBox(width: 5,),
          ],
        ),
        body: WelcomeBlock()
      ) ,
    );
  }
}