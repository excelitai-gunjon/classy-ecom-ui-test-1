import 'package:classy_e_com_demo_test_ui_1/view/home_page/component/appBar.dart';
import 'package:classy_e_com_demo_test_ui_1/view/home_page/component/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        leading: IconButton(
          onPressed: () {

          },
          icon: Icon(Icons.menu_open),
        ),
        title: Text("Classy E-com"),
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: Body(),
    );
  }
}
