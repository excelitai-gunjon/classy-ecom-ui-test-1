import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AddToCardButton extends StatelessWidget {
  const AddToCardButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width*.5,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xffFF6000), //background color of button
          side: BorderSide(
            width: 1,
            color: Colors.white,
          ), //border width and color
          elevation: 3, //elevation of button
          shape: RoundedRectangleBorder(
            //to set border radius to button
              borderRadius: BorderRadius.circular(15)),
          //padding: EdgeInsets.all(20) //content padding inside button
        ),
        onPressed: () {

        },
        child: Text(
          "Add To Cart",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
