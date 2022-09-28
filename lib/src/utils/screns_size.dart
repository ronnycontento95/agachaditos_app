import 'package:flutter/material.dart';


double? screnWith;
double? screnHeight;

//Extencion Publica
extension ScreenSize on double {
  double getScreenWith(
      {required BuildContext context, double? multiplear = null}) {
    var width = MediaQuery.of(context).size.width;
    if (multiplear != null) {
      width = width * multiplear;
    }
    return width;
  }

  double getSceenHight(
      {required BuildContext context, double? multiplear = null}) {
    var height = MediaQuery.of(context).size.height;
    if (multiplear != null) {
      height = height * multiplear;
    }
    return height;
  }
}
