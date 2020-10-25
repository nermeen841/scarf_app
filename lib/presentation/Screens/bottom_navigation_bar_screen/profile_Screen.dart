import 'package:flutter/material.dart';
import 'package:scarf_app/presentation/Screens/tab_bar_Screens/simple_tab_bar.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only( top: 30 , left: 15 , right: 15),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage:
                    NetworkImage('https://i.ibb.co/1vXpqVs/flutter-logo.jpg'),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text("NAME HERE",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),),
                      SizedBox( height: 5,),
                      Text("123@email.com",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w600,
                            fontSize: 13
                        ),),
                      SizedBox( height: 7,),
                      InkWell(
                        child: Container(
                            width: MediaQuery.of(context).size.width*0.4,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:  BorderRadius.circular(32),
                                border: Border.all( color: Colors.black54)
                            ),
                            child: Center(
                              child:  Text("EDIT PROFILE" ,
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13
                                ),),
                            ),
                        ),
                        onTap: (){
                          ///TODO: GO TO EDIT PROFILE SCREEN
                        },
                      )
                    ],
                  )
                ],
              ),

           SizedBox(
             height: 20,
           ),

           Container(
             padding: const EdgeInsets.only( top: 10),
           width: 300,
            height: 180,
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
             child: Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Icon( Icons.list , color: Colors.black54,),
                     Text("All My Orders" , style: TextStyle(
                       color: Colors.black54,
                       fontSize: 13,
                       fontWeight: FontWeight.w400
                     ),),
                     Icon( Icons.keyboard_arrow_right , color: Colors.black54, size: 15,),
                   ],
                 ),
                 Divider(),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Icon( Icons.bubble_chart , color: Colors.black54,),
                     Text("Pending Shipment" , style: TextStyle(
                         color: Colors.black54,
                         fontSize: 13,
                         fontWeight: FontWeight.w400
                     ),),
                     Icon( Icons.keyboard_arrow_right , color: Colors.black54, size: 15,),
                   ],
                 ),
                 Divider(),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Icon( Icons.payment , color: Colors.black54,),
                     Text("Pending Payments" , style: TextStyle(
                         color: Colors.black54,
                         fontSize: 13,
                         fontWeight: FontWeight.w400
                     ),),
                     Icon( Icons.keyboard_arrow_right , color: Colors.black54, size: 15,),
                   ],
                 ),
                 Divider(),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Icon( Icons.assignment_turned_in, color: Colors.black54,),
                     Text("Finished Orders" , style: TextStyle(
                         color: Colors.black54,
                         fontSize: 13,
                         fontWeight: FontWeight.w400
                     ),),
                     Icon( Icons.keyboard_arrow_right , color: Colors.black54, size: 15,),
                   ],
                 ),
               ],
             ),
           ),

              SizedBox(
                height: 150,
              ),
              MaterialButton(
                minWidth: 200,
                height: 40,
                elevation: 0,
                child: Text(
                  "LOG OUT",
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
                      MaterialPageRoute( builder: ( context)=>SimpleTabBar()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
