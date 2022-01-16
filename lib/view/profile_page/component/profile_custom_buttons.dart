import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomButtonByGunjon extends StatelessWidget {
  CustomButtonByGunjon({
    Key? key,
    this.buttonHeight,
    this.buttonWidth,
    this.paddingBottom,
    this.leadingIcon,
    this.trailingIcon,
    this.title,
    this.context,
  }) : super(key: key);

  double? buttonHeight;
  double? buttonWidth;
  double? paddingBottom;
  IconData? leadingIcon;
  IconData? trailingIcon;
  String? title;
  BuildContext? context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: paddingBottom!),
      child: SizedBox(
        height: buttonHeight, //height of button
        width: buttonWidth,//MediaQuery.of(context).size.width, //width of button
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.white, //background color of button
              side: BorderSide(
                  width: 1, color: Colors.white), //border width and color
              elevation: 3, //elevation of button
              shape: RoundedRectangleBorder(
                //to set border radius to button
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.all(20) //content padding inside button
          ),
          onPressed: () {
            //code to execute when this button is pressed.
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        leadingIcon,//Icons.shopping_bag,
                        color: Color(0xffFF6000),
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        title!,//"My Order",
                        style:
                        TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                trailingIcon,//Icons.arrow_forward_ios_outlined,
                color: Colors.black,
                size: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
