import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scarf_app/presentation/Screens/bottom_navigation_bar_screen/bottom_navigation_bar.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only( top: 10 , left: 20 , right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only( top: 10, left: 10 , right: 10 , bottom: 10),
                width: MediaQuery.of(context).size.width,
                height: 200,
                margin: EdgeInsets.only( top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),

                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            labelText: "Email",
                            labelStyle:  TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                            prefixIcon: Icon( Icons.email , color: Colors.black54,)
                        ),

                        validator: ( value){
                          if( value.isEmpty){
                            return "this Field is required";
                          }
                          else{
                            return null;
                          }
                        },

                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            labelText: "User Name",
                            labelStyle:  TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                            prefixIcon: Icon( Icons.perm_identity , color: Colors.black54,)
                        ),

                        validator: ( value){
                          if( value.isEmpty){
                            return "this Field is required";
                          }
                          else{
                            return null;
                          }
                        },

                      ),
                      TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            labelText: "Password",
                            labelStyle:  TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                            prefixIcon: Icon( Icons.lock_outline , color: Colors.black54,)
                        ),

                        validator: ( value){
                          if( value.isEmpty){
                            return "this Field is required";
                          }
                          else{
                            return null;
                          }
                        },

                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              MaterialButton(
                minWidth: 350,
                height: 40,
                elevation: 0,
                 child: Text(
                       "SIGN UP",
                       style: TextStyle(
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 15,
                       ),
                       textAlign: TextAlign.center,
                     ),
                color: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute( builder: ( context)=>BottomNavigationBarScreen()));
                },
              ),


              Padding(
                  padding: const EdgeInsets.only( top: 30 , right: 25 , left: 25),
                  child: Column(
                  children: [
                    Text(
                      "By creating your account , you agree to our",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    Text(
                      "Terms of service and privacy policy",
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],

                  )
              )
            ],
          ),



        ),
      ),
    );
  }
}
