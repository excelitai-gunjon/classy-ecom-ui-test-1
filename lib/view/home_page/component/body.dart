import 'package:carousel_slider/carousel_slider.dart';
import 'package:classy_e_com_demo_test_ui_1/model/best_selling_product.dart';
import 'package:classy_e_com_demo_test_ui_1/model/hot_deals_model.dart';
import 'package:classy_e_com_demo_test_ui_1/model/most_popular_product_model.dart';
import 'package:classy_e_com_demo_test_ui_1/model/new_arrival_madel.dart';
import 'package:classy_e_com_demo_test_ui_1/model/top_categories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../../main.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final CarouselController _controller = CarouselController();
  //HotDealsModel list=HotDealsModel();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Top Categories"),
                Text("View All"),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 20,
                  );
                },
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: TopCategoriModel.list.length,
                itemBuilder: (BuildContext context, i) {
                  TopCategoriModel categoriData = TopCategoriModel.list[i];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        //color: Colors.deepOrangeAccent,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image:
                                AssetImage(categoriData.imagePath.toString()),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
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
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Center(child: Text(categoriData.categoriName.toString())),
                    ],
                  );
                },
              ),
            ),
          ),
          ImageSlideshow(
            width: double.infinity,
            height: 200,
            initialPage: 0,
            indicatorColor: Color(0xffFF6000),
            indicatorBackgroundColor: Colors.grey,
            onPageChanged: (value) {
              debugPrint('Page changed : $value');
            },
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/model1.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Stack(
                      children: [
                        Text(
                          "Fashion\nLover\nCollection",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/model2.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Stack(
                      children: [
                        Text(
                          "Fashion\nLover\nCollection",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/model1.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Stack(
                      children: [
                        Text(
                          "Fashion\nLover\nCollection",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
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
          ),
          SizedBox(
            height: 180,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 3,
                );
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: MostPopularProductModel.list.length,
              itemBuilder: (BuildContext context, i) {
                MostPopularProductModel product =
                    MostPopularProductModel.list[i];
                return Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            // image: DecorationImage(
                            //   image: AssetImage(product.imageUrl.toString()),
                            //   fit: BoxFit.fill
                            // )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            product.imageUrl.toString()),
                                        fit: BoxFit.cover),
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.redAccent,
                                                    width: 1)),
                                            child: Icon(
                                              Icons.favorite_border_outlined,
                                              color: Colors.deepOrange,
                                              size: 15,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Text(product.productName.toString()),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        "\$" + product.productPrice.toString()),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          color: Color(0xffFF6000),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
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
          ),

          SizedBox(
            height: 300,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 3,
                );
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: NewArrivalModel.list.length,
              itemBuilder: (BuildContext context, i) {
                NewArrivalModel product = NewArrivalModel.list[i];
                return Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          height: 280,
                          width: 280,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            //borderRadius: BorderRadius.circular(15),
                            // image: DecorationImage(
                            //   image: AssetImage(product.imageUrl.toString()),
                            //   fit: BoxFit.fill
                            // )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            product.imageUrl.toString()),
                                        fit: BoxFit.cover),
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                Text(product.productName.toString()),
                                Text(product.productDetail.toString()),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "\$" +
                                              product.productPrice.toString(),
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "\$" +
                                                  product.productPrice
                                                      .toString(),
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.black,
                                                  decoration:
                                                      TextDecoration.lineThrough
                                                  //fontWeight: FontWeight.bold
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "\$" + product.productOffers.toString(),
                                      style: TextStyle(
                                          color: Color(0xffFF6000),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),

          ///
          ///
          ///
          ///Special Offers
          ///
          ///
          ///
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/offers.png"), fit: BoxFit.fill)),
          ),
          SizedBox(
            height: 20,
          ),

          ///
          ///
          ///
          ///best selling products
          ///
          ///
          ///
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * .7,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/bestSelling.png"),
                      fit: BoxFit.fill)),
            ),
          ),
          SizedBox(
            height: 30,
          ),

          ///
          ///
          ///
          ///Best Selling Products
          ///
          ///
          ///
          Container(
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
          ),

          ///
          ///
          ///
          ///Hot Deals
          ///
          ///
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              //color: Colors.grey,
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 2,
                    offset: Offset(2, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ClipPath(
                        clipper: HotDealDiagonalPath(),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1
                                ),
                                  color: Colors.white,
                                  gradient: LinearGradient(
                                      colors: [Colors.white, Colors.white],
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomCenter,
                                  ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 4,
                                    blurRadius: 2,
                                    offset: Offset(2, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      width: MediaQuery.of(context).size.width,
                                      color: Colors.black,
                                      child: Center(
                                        child: Text(
                                          "Hot Deals",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: CarouselSlider.builder(
                                        //items: imageSliders,
                                        itemCount: HotDealsModel.list.length,
                                        options: CarouselOptions(
                                          enlargeCenterPage: true,
                                          reverse: false,
                                          autoPlay: true,
                                          autoPlayInterval: Duration(seconds: 3),
                                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                        ),
                                        carouselController: _controller,
                                        itemBuilder: (BuildContext context,
                                            int itemIndex, int pageViewIndex) {
                                          HotDealsModel item =
                                              HotDealsModel.list[itemIndex];
                                          return Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Colors.white,
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                            item.type1Image
                                                                .toString(),
                                                          ),
                                                          fit: BoxFit.fill,
                                                        ),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                1), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Colors.white,
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                            item.type2Image
                                                                .toString(),
                                                          ),
                                                          fit: BoxFit.fill,
                                                        ),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                1), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Colors.white,
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                            item.type3Image
                                                                .toString(),
                                                          ),
                                                          fit: BoxFit.fill,
                                                        ),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                1), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                item.notification.toString(),
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: SizedBox(
                                                  height: 100,
                                                  width: MediaQuery.of(context).size.width,
                                                  child: Image.asset(
                                                    item.type2Image.toString(),
                                                    fit: BoxFit.fill,
                                                    width: 1000.0,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                item.offerEndText.toString(),
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  //fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 20,
                                                      width: 20,
                                                      decoration:
                                                          BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                1), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          item.day.toString(),
                                                          style: TextStyle(
                                                              fontSize: 8),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 20,
                                                      width: 20,
                                                      decoration:
                                                          BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                1), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          item.h.toString(),
                                                          style: TextStyle(
                                                              fontSize: 8),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 20,
                                                      width: 20,
                                                      decoration:
                                                          BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                1), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          item.m.toString(),
                                                          style: TextStyle(
                                                              fontSize: 8),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 20,
                                                      width: 20,
                                                      decoration:
                                                          BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                1), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          item.s.toString(),
                                                          style: TextStyle(
                                                              fontSize: 8),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 20,
                                                      width: 20,
                                                      decoration:
                                                      BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(5),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                0.5),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                1), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          "D",
                                                          style: TextStyle(
                                                              fontSize: 8),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 20,
                                                      width: 20,
                                                      decoration:
                                                      BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(5),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                0.5),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                1), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          "H",
                                                          style: TextStyle(
                                                              fontSize: 8),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 20,
                                                      width: 20,
                                                      decoration:
                                                      BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(5),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                0.5),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                1), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          "M",
                                                          style: TextStyle(
                                                              fontSize: 8),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 20,
                                                      width: 20,
                                                      decoration:
                                                      BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(5),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                0.5),
                                                            spreadRadius: 1,
                                                            blurRadius: 3,
                                                            offset: Offset(0,
                                                                1), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          "S",
                                                          style: TextStyle(
                                                              fontSize: 8),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          );
                                        }),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      color: Colors.white,
                                      child: Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 40,
                                            width: 55,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.white),
                                              onPressed: () =>
                                                  _controller.previousPage(),
                                              child: Text(
                                                '<Pre',
                                                style: TextStyle(
                                                    fontSize: 8,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 40,
                                            width: 70,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.white),
                                              onPressed: () =>
                                                  _controller.nextPage(),
                                              child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    'Next>',
                                                    style: TextStyle(
                                                        fontSize: 8,
                                                        color: Colors.black),
                                                  )),
                                            ),
                                          ),
                                          // ...Iterable<int>.generate(imgList.length).map(
                                          //       (int pageIndex) => Flexible(
                                          //     child: ElevatedButton(
                                          //       onPressed: () => _controller.animateToPage(pageIndex),
                                          //       child: Text("$pageIndex"),
                                          //     ),
                                          //   ),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.white10,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                              child: AppBar(
                                bottom: TabBar(
                                  tabs: [
                                    Tab(
                                      icon: Icon(Icons.directions_bike),
                                    ),
                                    Tab(
                                      icon: Icon(
                                        Icons.directions_car,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // create widgets for each tab bar here
                            Expanded(
                              child: TabBarView(
                                children: [
                                  // first tab bar view widget
                                  Container(
                                    color: Colors.red,
                                    child: Center(
                                      child: Text(
                                        'Bike',
                                      ),
                                    ),
                                  ),

                                  // second tab bar viiew widget
                                  Container(
                                    color: Colors.pink,
                                    child: Center(
                                      child: Text(
                                        'Car',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            margin: EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage(
                        item.toString(),
                      ),
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage(
                        item.toString(),
                      ),
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage(
                        item.toString(),
                      ),
                    ),
                  ],
                ),
                Text("Hero Thriller 160R"),
                Image.asset(item.toString(), fit: BoxFit.cover, width: 1000.0),
                Text("Hurry Up!"),
                Text("Offer ends in:"),
                //   Image.asset(item.toString(), fit: BoxFit.cover, width: 1000.0),
                //   Positioned(
                //     bottom: 0.0,
                //     left: 0.0,
                //     right: 0.0,
                //     child: Container(
                //       decoration: BoxDecoration(
                //         gradient: LinearGradient(
                //           colors: [
                //             Color.fromARGB(200, 0, 0, 0),
                //             Color.fromARGB(0, 0, 0, 0)
                //           ],
                //           begin: Alignment.bottomCenter,
                //           end: Alignment.topCenter,
                //         ),
                //       ),
                //       padding: EdgeInsets.symmetric(
                //           vertical: 10.0, horizontal: 20.0),
                //       child: Text(
                //         'No. ${imgList.indexOf(item)} image',
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 20.0,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ),
                //   ),
              ],
            ),
          ))
      .toList();
}

class HotDealDiagonalPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width - 25, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
