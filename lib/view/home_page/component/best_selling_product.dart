import 'package:classy_e_com_demo_test_ui_1/model/best_selling_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BestSellingProduct extends StatelessWidget {
  const BestSellingProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF4F4F4),
      height: 470,
      width: double.infinity,
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: false,
        itemCount: BestSellingProductModel.list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 10,
          mainAxisExtent: 220,
        ),
        itemBuilder: (BuildContext context, i) {
          BestSellingProductModel product =
          BestSellingProductModel.list[i];
          return Container(
            //margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
              color: Colors.white,
              //borderRadius: BorderRadius.circular(15),
              // image: DecorationImage(
              //   image: AssetImage(product.imageUrl.toString()),
              //   fit: BoxFit.fill
              // )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(product.imageUrl.toString()),
                        fit: BoxFit.contain),
                    color: Colors.transparent,
                    //borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(product.productName.toString()),
                      Text(product.productDetail.toString()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "\$" + product.productPrice.toString(),
                                style: TextStyle(
                                    color: Color(0xffFF6000),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(0xffFF6000),
                                size: 20,
                              ),
                              Text(
                                " " + product.productRating.toString(),
                                style: TextStyle(
                                  //color: Color(0xffFF6000),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
