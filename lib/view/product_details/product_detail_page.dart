import 'package:classy_e_com_demo_test_ui_1/controller/app_bar_controler.dart';
import 'package:classy_e_com_demo_test_ui_1/controller/product_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selected = Provider.of<ProductDetailController>(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                //fit: StackFit.loose,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          image: DecorationImage(
                              image: AssetImage("images/perfume.jpeg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 120,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              selected.selected(1);
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                                border: Border.all(
                                  color: selected.selection == 1
                                      ? Colors.amber
                                      : Colors.white,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              selected.selected(2);
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.deepPurpleAccent,
                                border: Border.all(
                                  color: selected.selection == 2
                                      ? Colors.amber
                                      : Colors.white,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              selected.selected(3);
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.brown,
                                border: Border.all(
                                  color: selected.selection == 3
                                      ? Colors.amber
                                      : Colors.white,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 20,
                    child: GestureDetector(
                      onTap: () {
                        final appBar = Provider.of<AppBarController>(context,
                            listen: false);
                        appBar.setAppBar(true);
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white, //Color(0xffFF6000),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Product Name",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Product Name",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                  width: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          //item.count = (item.count! + 1)!;
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(child: Text("+")),
                        ),
                      ),
                      Text("1"
                          //item.count.toString(),
                          ),
                      GestureDetector(
                        onTap: () {
                          //item.count = (item.count! - 1)!;
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(child: Text("-")),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),

            Row(
              children: [
                Text("Sizes"),
                Column(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset:
                            Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                    )
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
