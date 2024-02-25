import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  Color? color;
  String? text;
  double? height;
  double? width;
  Color? textColor;
  BoxDecoration? deco;

  AppButton(
      {Key? key,
        required this.text ,
        this.color = Colors.white,
        this.height = 45,
        this.width = 200,
        this.textColor,this.deco})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: deco,

      height: height,
      width: width,
      child: Center(child: Text(text!,style:TextStyle(color: textColor),)),
    );
  }
}
