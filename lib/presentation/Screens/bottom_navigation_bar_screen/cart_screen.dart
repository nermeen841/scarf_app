import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.clear , color: Colors.black, size: 20,),
            onPressed: (){
              Navigator.pop(context);
            },
          )
        ],
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 15, left: 15 , right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Cart" , style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w400
            ),),

           Container(
             width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height*0.5,
             child: ListView.builder(
               itemCount: 10,
               itemBuilder: ( context , index){
                 return  Container(
                     padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                     height: 130,
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
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                             children: [
                               Container(
                                 width: 80,
                                 height: 80,
                                 child: Image.network("https://i.ibb.co/1vXpqVs/flutter-logo.jpg" , fit: BoxFit.cover,),),
                               SizedBox( width: 10,),
                               Text("Nike F.C. Woman's Tie-" , style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 14
                               ),),]),
                         Divider(),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Text('x1', style: TextStyle(
                                 color: Colors.blueGrey,
                                 fontSize: 12,
                                 fontWeight: FontWeight.w400
                             ),),

                             Text('LE 125', style: TextStyle(
                                 color: Colors.pinkAccent,
                                 fontSize: 12,
                                 fontWeight: FontWeight.w400
                             ),),

                           ],

                         ),
                       ],
                     )
                 );
               },
             ),
           ),
            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("TOTAL" , style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),),

                Text("LE 150" , style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                ),),

              ],
            ),
            SizedBox(
              height: 20,
            ),

            MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              height: 50,
              color: Colors.pinkAccent,
              child: Text('Checkout' , style: TextStyle( color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
              onPressed: (){
                ///TODO: create function for this
              },
            )

          ],
        ),
      ),
    );
  }
}
