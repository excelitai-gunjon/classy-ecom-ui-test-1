import 'dart:ui';

//import 'package:classy_ui_e_commerce/signin_and_registration_module_pages/signin2.dart';
import 'package:classy_e_com_demo_test_ui_1/view/signin_and_registration_module_pages/signin2.dart';
import 'package:flutter/material.dart';
class RegistationScreen extends StatelessWidget {
  bool isChecked = false;
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
              onPressed: () {  },

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
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text("WELCOME",style:  TextStyle(
                  color: Colors.black,
                  fontSize: 20
              ),),
              SizedBox(height: 10,),

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
                          Icons.person_outline_outlined,
                          color: Colors.grey,

                        ),
                        SizedBox(width: 10),
                        Expanded(child: Text("Name",
                          style: TextStyle(color: Colors.grey,fontSize: 18),

                        ),)

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),

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
                          Icons.mail_outlined,
                          color: Colors.grey,

                        ),
                        SizedBox(width: 10),
                        Expanded(child: Text("Email",
                          style: TextStyle(color: Colors.grey,fontSize: 18),

                        ),

                        ),
                      ],
                    ),
                  ),
                ),
              ),


              SizedBox(height: 20),


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
                          Icons.local_phone_outlined,
                          color: Colors.grey,

                        ),
                        SizedBox(width: 10),
                        Expanded(child: Text("Phone Number",
                          style: TextStyle(color: Colors.grey,fontSize: 18),

                        ),

                        ),
                      ],
                    ),
                  ),
                ),
              ),


              SizedBox(height: 20),

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
                        SizedBox(width: 20),
                        Expanded(child: Text("Password",
                          style: TextStyle(color: Colors.grey,fontSize: 18),

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



              SizedBox(height: 20),




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
                        Expanded(child: Text("Confirm password",
                          style: TextStyle(color: Colors.grey,fontSize: 18),

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
              SizedBox(height: 10),


                    Row(
                      children: [
                         Checkbox(
                           value:isChecked,
                             onChanged: (bool? newValue) {
                             isChecked =newValue!;
                             }),
                        Text("I agree to the Term of User")
                      ],
                    ), //Row


              SizedBox(height: 80),

              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => SignInScreen2()));

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
                          child: Text("CREATE ACCOUNT",
                            style: TextStyle(color: Colors.white,fontSize: 20),

                          ),
                        ),)

                      ],
                    ),
                  ),
                ),
              ),


              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Text("Already have an account ?",
                        style: TextStyle(color: Colors.grey,fontSize: 15),

                      ),

                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Text("SIGN UP",
                        style: TextStyle(color: Colors.red,fontSize: 15),

                      ),

                    ),
                  ],
                ),
              ),


            ],


      ),
        ),
    ),
    );


  }
}
