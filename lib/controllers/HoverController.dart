import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:get/get.dart';

class HoverController extends GetxController {
  bool isHover=false;

  void onHoverGotoService(bool v){
    isHover=v;
    update();
  }

}