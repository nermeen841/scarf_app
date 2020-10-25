import 'package:flutter/material.dart';
import 'package:scarf_app/presentation/Screens/bottom_navigation_bar_screen/bottom_navigation_bar.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
                height: 150,
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
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            labelText: "UserName / Email",
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
                  "LOG IN",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
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
                  padding: const EdgeInsets.only( top: 30 , right: 30 , left: 30),
                  child: Column(
                   children: [
                     Text(
                       "Don't have ann account ? Swipe right to",
                       style: TextStyle(
                         color: Colors.black54,
                         fontSize: 14,
                         fontWeight: FontWeight.w400,
                       ),
                     ),
                     Text(
                        "Create a new account",
                        style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
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
