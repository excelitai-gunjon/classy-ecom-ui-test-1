//import 'package:classy_ui_e_commerce/signin_and_registration_module_pages/forget.pass.dart';
import 'package:classy_e_com_demo_test_ui_1/view/signin_and_registration_module_pages/forget.pass.dart';
import 'package:flutter/material.dart';
class ResetScreen extends StatelessWidget {
  const ResetScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0), // here the desired height
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
              onPressed: () {  },//

            ),
            title: Image.asset(
                'assets/classy new.png',
                width: 80,
                height: 50,
                fit:BoxFit.fill

            ),



          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 50),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60,),
            Center(
              child: Text("Reset Password",style:  TextStyle(
                  color: Colors.black,
                  fontSize: 30
              ),),
            ),
            SizedBox(height: 30,),

            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white70,
                    padding: EdgeInsets.symmetric(vertical: 10)

                  // backgroundColor: MaterialStateProperty.all(Colors.white70),
                  // padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20,horizontal: 80)),
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.lock_outlined,
                        color: Colors.grey,

                      ),
                      SizedBox(width: 10),
                      Expanded(child: Text("Password",
                        style: TextStyle(color: Colors.grey,fontSize: 20),

                      ),
                      ),


                      SizedBox(width: 10),

                      Icon(
                        Icons.visibility_outlined,
                        color: Colors.grey,
                      ),




                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),

            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white70,
                    padding: EdgeInsets.symmetric(vertical: 10)

                  // backgroundColor: MaterialStateProperty.all(Colors.white70),
                  // padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 20,horizontal: 80)),
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.lock_outlined,
                        color: Colors.grey,

                      ),
                      SizedBox(width: 10),
                      Expanded(child: Text("Confirm Password",
                        style: TextStyle(color: Colors.grey,fontSize: 20),

                      ),

                      ),


                      SizedBox(width: 10),

                      Icon(
                        Icons.visibility_outlined,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),


            SizedBox(height: 30),



        SizedBox(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (Context) => ForgetPassScreen()));

              // Respond to button press
            },
            style: ElevatedButton.styleFrom(primary: Color(0xffFF6000),
              shape: new
              RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),


            ),

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Center(
                    child: Text("RESET",
                      style: TextStyle(color: Colors.white,fontSize: 20),

                    ),
                  ),)

                ],
              ),
            ),
          ),
        ),
    ],
      ),
      ),
    );


  }
}
