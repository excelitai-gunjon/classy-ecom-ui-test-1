import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading:SizedBox(
              height: 100,
              width: 100,
              child: Image.asset("images/excel.jpeg"),
            ),
            title: Text("Excel IT AI"),
            subtitle: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.phone_android_outlined),
                    Text("info@excelitai.com"),
                  ],
                ),
              ],
            ),
            trailing: IconButton(
              onPressed: (){

              },
              icon: Icon(FontAwesomeIcons.edit,color: Color(0xffFF6000),),
            ),
          )
        ],
      ),
    );
  }
}
