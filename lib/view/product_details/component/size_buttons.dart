import 'package:flutter/material.dart';

class SizeButton extends StatelessWidget {
  SizeButton({
    Key? key,
    this.buttonHeight,
    this.buttonWidth,
    this.title,
  }) : super(key: key);

  double? buttonWidth;
  double? buttonHeight;
  String? title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: buttonHeight,
      width: buttonWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Text(title!),
      ),
    );
  }
}
