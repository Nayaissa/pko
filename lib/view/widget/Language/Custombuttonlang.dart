import 'package:flutter/material.dart';
import 'package:pko/core/constant/AppColor.dart';

// ignore: must_be_immutable
class CustomButttonLanguage extends StatelessWidget {
  final String textbutton;
  void Function()? onPressed;
   CustomButttonLanguage({
    super.key,
    required this.textbutton,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: MaterialButton(
        color: AppColor.primaryColor,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(
          textbutton,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
