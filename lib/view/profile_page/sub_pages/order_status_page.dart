import 'package:classy_e_com_demo_test_ui_1/controller/app_bar_controler.dart';
import 'package:classy_e_com_demo_test_ui_1/controller/peimary_page_controller.dart';
import 'package:classy_e_com_demo_test_ui_1/view/home_page/home_page.dart';
import 'package:classy_e_com_demo_test_ui_1/view/order_module_page/order_track_page/order_track_page.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:provider/provider.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Path customPath = Path()
      ..moveTo(0, 2)
      ..lineTo(0, 70)
    ;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            //Navigator.pop(context);
            final status =
            Provider.of<PrimaryScreenState>(context, listen: false);
            status.setPrimaryState(true);
            final primaryPageState = Provider.of<PrimaryPageController>(context,listen: false);
            primaryPageState.setPrimaryPage(3);
          },
          child: const Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),


        title: const Text('Order Status',
          style: TextStyle(
              color: Colors.black,
              fontSize: 17
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),




      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
                child: Text(
                  'Invoice: 25AK367',
                  style: TextStyle(
                      color: Colors.orange
                  ),
                )
            ),

            const SizedBox(height: 20,),

            SizedBox(
              height: MediaQuery.of(context).size.height*.3,
              width: MediaQuery.of(context).size.width*.6,
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     color: Colors.black,
              //     width: .5
              //   )
              // ),
              child: Image.asset('assets/images/order_status.png'),
            ),

            const SizedBox(height: 10,),

            SizedBox(
              height: MediaQuery.of(context).size.height*.4,
              width: MediaQuery.of(context).size.width*.75,
              // decoration: BoxDecoration(
              //     border: Border.all(
              //         color: Colors.black,
              //         width: .5
              //     )
              // ),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.watch_later_outlined, color: Color(0xFFFF6000),),
                          DottedBorder(
                              color: const Color(0xFFFF6000),
                              customPath: (size)=> customPath,
                              strokeWidth: 1,
                              strokeCap: StrokeCap.round,
                              borderType: BorderType.Rect,
                              dashPattern: const [2,2],
                              child: const SizedBox(
                                width: 0,
                                height: 70,
                              )
                          ),
                          const Icon(Icons.car_rental_outlined, color: Color(0xFFFF6000)),
                          DottedBorder(
                              color: const Color(0xFFFF6000),
                              customPath: (size)=> customPath,
                              strokeWidth: 1,
                              strokeCap: StrokeCap.round,
                              borderType: BorderType.Rect,
                              dashPattern: const [2,2],
                              child: const SizedBox(
                                width: 0,
                                height: 70,
                              )
                          ),
                          const Icon(Icons.card_giftcard_outlined, color: Color(0xFFFF6000))
                        ],
                      )
                  ),
                  Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Order received'),
                          const Text('2.05 pm, 11 may 2021', style: TextStyle(color: Colors.grey),),
                          const SizedBox(height: 55,),
                          const Text('On the way'),
                          const Text('2.05 pm, 11 may 2021', style: TextStyle(color: Colors.grey),),
                          const SizedBox(height: 10,),
                          SizedBox(
                            height: 20,
                            width: 105,
                            child: ElevatedButton(
                              onPressed: (){
                                //OrderTrackPage
                                Navigator.push(context, MaterialPageRoute(builder: (context) => OrderTrackPage()));
                              },
                              child: Row(
                                children: const [
                                  Text('Tracking', style: TextStyle(color: Colors.white70),),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Icon(
                                      Icons.circle,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: const Color(0xFFFF6000),
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  side: const BorderSide(width: 1, color: Color(0xFFFF6000))
                              ),
                            ),
                          ),
                          const SizedBox(height: 40,),
                          const Text('Deliverd'),
                          const Text('Finish time in 10 mins', style: TextStyle(color: Colors.grey),),
                        ],
                      )
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
              width: 170,
              child: ElevatedButton(
                onPressed: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                      HomePage()), (Route<dynamic> route) => false);
                },
                child: const Text('Back to Shopping', style: TextStyle(color: Colors.white70),),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFF6000),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: const BorderSide(width: 1, color: Color(0xFFFF6000))
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
