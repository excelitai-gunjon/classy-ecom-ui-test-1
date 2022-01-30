import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MostPopullerHeadLine extends StatelessWidget {
  const MostPopullerHeadLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
        child: Text(
          "Most Popular",
          style: TextStyle(
            fontSize: 20,
            //fontWeight: FontWeight.bold,
            //color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
