import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only( top: 25 , left: 20 , right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Center(
               child:  Column(
                 children: [
                   Text(
                     "Enter the email address you used to create",
                     style: TextStyle(
                       color: Colors.black54,
                       fontSize: 14,
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                   Text(
                     "your account and we will email you a link to",
                     style: TextStyle(
                       color: Colors.black54,
                       fontSize: 14,
                       fontWeight: FontWeight.w400,
                     ),
                     textAlign: TextAlign.center,
                   ),
                   Text(
                     "reset your password",
                     style: TextStyle(
                       color: Colors.black54,
                       fontSize: 14,
                       fontWeight: FontWeight.w400,
                     ),
                     textAlign: TextAlign.center,
                   ),
                 ],

               ),
             ),

              SizedBox(
                height: 40,
              ),

              Container(
                padding: const EdgeInsets.only( top: 10, left: 10 , right: 10 , bottom: 10),
                width: MediaQuery.of(context).size.width,
                height: 80,
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
                            labelText: " Email",
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
                  "SEND EMAIL",
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
                onPressed: (){},
              ),
            ],
          ),



        ),
      ),
    );
  }
}
