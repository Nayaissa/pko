import 'package:flutter/material.dart';
import 'package:pko/core/constant/AppColor.dart';

class Customapparhome extends StatelessWidget {
  const Customapparhome({
    super.key,
    required this.title,
    required this.prefixIcon, this.onPressed, this.onPressedsearch,
  });
  final String title;
  final IconData prefixIcon;
  final void Function()? onPressed;
    final void Function()? onPressedsearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 5),
                prefixIcon: IconButton( color: AppColor.primaryColor,onPressed:onPressedsearch, icon: Icon(prefixIcon),),
                hintText: title,
                fillColor: Colors.grey[200],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Container(
            width: 60,
            margin: EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.notifications_active_outlined,
                size: 30,
                color: AppColor.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
