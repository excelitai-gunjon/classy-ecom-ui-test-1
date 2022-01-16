import 'package:classy_e_com_demo_test_ui_1/controller/app_bar_controler.dart';
import 'package:classy_e_com_demo_test_ui_1/model/main_home_bottom_app_bar_model.dart';
import 'package:classy_e_com_demo_test_ui_1/view/cart_page/cart_page.dart';
import 'package:classy_e_com_demo_test_ui_1/view/home_page/component/appBar.dart';
import 'package:classy_e_com_demo_test_ui_1/view/home_page/component/body.dart';
import 'package:classy_e_com_demo_test_ui_1/view/product_details/product_detail_page.dart';
import 'package:classy_e_com_demo_test_ui_1/view/profile_page/profile_page.dart';
import 'package:classy_e_com_demo_test_ui_1/view/wishList_page/wishlist_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final appBar=Provider.of<AppBarController>(context);
  int currentIndex = 0;
  //var productDetail=false;
  AppBarController appBar=AppBarController();
@override
  void initState() {
    // TODO: implement initState
    appBar.setAppBar(true);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    appBar.dispose();
    //super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final productAppBar=Provider.of<AppBarController>(context);
    return Scaffold(
      appBar: productAppBar.appBar?AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_open),
        ),
        title: Text("Classy E-com"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
      ):null,
      body: productAppBar.appBar?_getBody():ProductDetail(),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...MainHomePageBottomAppBarModel.list.map((MainHomePageBottomAppBarModel data) {
              return data.isBlank
                  ? SizedBox(
                      width: 10,
                    )
                  : InkWell(
                      onTap: () {
                        setState(() {
                          currentIndex = data.index;
                          productAppBar.setAppBar(true);
                        });
                        print(data.index.toString());
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            //SizedBox(height: 10,),
                            Icon(
                              data.icon,
                              color: currentIndex == data.index
                                  ? Color(0xffFF6000)
                                  : Colors.grey,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              data.label!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: currentIndex == data.index
                                          ? Color(0xffFF6000)
                                          : Colors.grey),
                            )
                          ],
                        ),
                      ),
                    );
            })
          ],
        ),
      ),
    );
  }

  _getBody() {
    switch (currentIndex) {
      case 0:
        return Home();
      case 1:
        return ProductDetail();//Wishlist();
      case 2:
        return CartList();
      case 3:
        return Profile();
      default:
        return Home();
    }
  }
}
