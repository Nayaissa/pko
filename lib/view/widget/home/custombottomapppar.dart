import 'package:flutter/material.dart';
import 'package:pko/core/constant/AppColor.dart';

class CustomBottonAppar extends StatelessWidget {
 const  CustomBottonAppar({
    super.key,
    required this.textbutton,
    required this.iconData,
    this.onPressed,
   required  this.active,
  });
  final String textbutton;
  final IconData iconData;
  final void Function()? onPressed;
  final  bool? active ;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        children: [
          Icon(iconData, color:active == true ?AppColor.primaryColor:Colors.black),
          Text(textbutton, style: TextStyle(color:active == true ?AppColor.primaryColor: Colors.black)),
        ],
      ),
    );
  }
}
