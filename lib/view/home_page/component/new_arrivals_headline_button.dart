import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NewArrivalsHeadLineButton extends StatelessWidget {
  const NewArrivalsHeadLineButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "New Arrivals",
            style: TextStyle(
              fontSize: 20,
              //fontWeight: FontWeight.bold,
              //color: Colors.black87,
            ),
          ),
          SizedBox(
            height: 25,
            width: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffFF6000),
              ),
              onPressed: () {},
              child: Text("More"),
            ),
          ),
        ],
      ),
    );
  }
}
