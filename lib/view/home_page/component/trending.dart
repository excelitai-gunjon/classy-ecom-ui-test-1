import 'package:classy_e_com_demo_test_ui_1/model/trending_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Trending extends StatelessWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trending",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "View All",
                  style: TextStyle(
                    color: Color(0xffFF6000),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: false,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 10,
                );
              },
              itemCount: TrendingModel.list.length,
              itemBuilder: (context, index) {
                TrendingModel item = TrendingModel.list[index];
                return Container(
                  margin: EdgeInsets.only(right: 8),
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.9),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset:
                        Offset(2, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image:
                                  AssetImage(item.imageUrl.toString()),
                                  fit: BoxFit.fill),
                              borderRadius:
                              BorderRadiusDirectional.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.9),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(
                                      2, 5), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(item.productName.toString()),
                                Text(item.productDetail.toString()),
                                Row(
                                  children: [
                                    Text("\$ ",style: TextStyle(color: Color(0xffFF6000)),),
                                    Text(item.productPrice.toString(),style: TextStyle(color: Color(0xffFF6000)),)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Color(0xffFF6000),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
