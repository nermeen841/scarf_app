import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:scarf_app/presentation/Screens/Category_page/kid_category.dart';
import 'package:scarf_app/presentation/Screens/Category_page/men_category.dart';
import 'package:scarf_app/presentation/Screens/Category_page/women_category.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  PageController controller;

  GlobalKey<PageContainerState> key = GlobalKey();

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int counter = 0;



  @override
  Widget build(BuildContext context) {
    return Container(
     child: Padding(
       padding: const EdgeInsets.only( top: 20 ),
       child: Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                 width: MediaQuery.of(context).size.width*0.8,
                 height: 50,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius:  BorderRadius.circular(32),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(0.5),
                       spreadRadius: 5,
                       blurRadius: 7,
                       offset: Offset(0, 3), // changes position of shadow
                     ),
                   ],
                 ),
                 child: TextField(
                   decoration: InputDecoration(
                     hintStyle: TextStyle(fontSize: 17),
                     hintText: 'Search your trips',
                     suffixIcon: Icon(Icons.search , color: Colors.black,),
                     border: InputBorder.none,
                     contentPadding: EdgeInsets.all(20),
                   ),
                 ),
               ),
               Icon( Icons.local_bar , color: Colors.pinkAccent, size: 30,)
             ],
           ),

           SizedBox( height: 20,),
           Container(
             child: Container(
               height: 120.0,
               child: PageIndicatorContainer(
                 key: key,
                 indicatorColor: Colors.white,
                 indicatorSelectorColor: Colors.blue,
                 child: PageView(
                   children: <Widget>[
                     Container( color: Colors.pinkAccent,),
                     Container( color: Colors.amberAccent),
                     Container( color: Colors.red,),
                     Container( color: Colors.green),
                   ],
                   controller: controller,
                   reverse: true,
                 ),
                 align: IndicatorAlign.bottom,
                 length: 4,
                 indicatorSpace: 10.0,
               ),
             ),
           ),
         //  SizedBox( height: 20,),
           Expanded(
             child: Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height,
               child: Padding(
                   padding: const EdgeInsets.only( left: 15, right: 15),
                   child: ListView(
                     scrollDirection: Axis.vertical,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Categories" , style: TextStyle(
                             color: Colors.black,
                             fontSize: 16,
                             fontWeight: FontWeight.bold,
                           ),),

                           InkWell(
                             child:  Text("See All" , style: TextStyle(
                               color: Colors.pinkAccent,
                               fontSize: 16,
                               fontWeight: FontWeight.bold,
                             ),),
                             onTap: (){
                               ///todo;dvmslmldmdmdmdhmghkry
                             },
                           )
                         ],
                       ),
                       SizedBox( height: 20),
                       Container(
                         height: 170,
                         child: ListView.builder(
                           itemCount: 1,
                           scrollDirection: Axis.horizontal,
                           itemBuilder: (  context , index){
                             return  Row(
                               children: [
                                 InkWell(
                                   child:  Row(
                                     children: [
                                       Container(
                                           width: 150,
                                           height: 150,
                                           child: Column(
                                             children: [
                                               ClipRect(
                                                 child: Image.network(
                                                     'https://i.ibb.co/1vXpqVs/flutter-logo.jpg'
                                                 ),
                                               ),
                                               Text('Woman' )
                                             ],
                                           ),
                                           decoration: BoxDecoration(
                                             color: Colors.white,
                                             boxShadow: [
                                               BoxShadow(
                                                 color: Colors.grey.withOpacity(0.5),
                                                 spreadRadius: 5,
                                                 blurRadius: 7,
                                                 offset: Offset(0, 3),
                                               ),

                                             ],

                                           )
                                       ),


                                     ],
                                   ),
                                   onTap: (){
                                     Navigator.push(context, MaterialPageRoute(builder: (context)=> WomenCategory()));
                                   },
                                 ),
                                 SizedBox(
                                   width: 10,
                                 ),
                                 InkWell(
                                   child:  Row(
                                     children: [
                                       Container(
                                           width: 150,
                                           height: 150,
                                           child: Column(
                                             children: [
                                               ClipRect(
                                                 child: Image.network(
                                                     'https://i.ibb.co/1vXpqVs/flutter-logo.jpg'
                                                 ),
                                               ),
                                               Text('Men' )
                                             ],
                                           ),
                                           decoration: BoxDecoration(
                                             color: Colors.white,
                                             boxShadow: [
                                               BoxShadow(
                                                 color: Colors.grey.withOpacity(0.5),
                                                 spreadRadius: 5,
                                                 blurRadius: 7,
                                                 offset: Offset(0, 3),
                                               ),

                                             ],

                                           )
                                       ),


                                     ],
                                   ),
                                   onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MenCategory()));
                                   },
                                 ),
                                 SizedBox(
                                   width: 10,
                                 ),
                                 InkWell(
                                   child: Row(
                                     children: [
                                       Container(
                                           width: 150,
                                           height: 150,
                                           child: Column(
                                             children: [
                                               ClipRect(
                                                 child: Image.network(
                                                     'https://i.ibb.co/1vXpqVs/flutter-logo.jpg'
                                                 ),
                                               ),
                                               Text('Child' )
                                             ],
                                           ),
                                           decoration: BoxDecoration(
                                             color: Colors.white,
                                             boxShadow: [
                                               BoxShadow(
                                                 color: Colors.grey.withOpacity(0.5),
                                                 spreadRadius: 5,
                                                 blurRadius: 7,
                                                 offset: Offset(0, 3),
                                               ),

                                             ],

                                           )
                                       ),


                                     ],
                                   ),
                                   onTap: (){
                                     Navigator.push(context, MaterialPageRoute(builder: (context)=> KidCategory()));
                                   },
                                 )
                               ],
                             );
                           },
                         ),
                       ),
                       SizedBox( height: 20),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Features" , style: TextStyle(
                             color: Colors.black,
                             fontSize: 16,
                             fontWeight: FontWeight.bold,
                           ),),

                           InkWell(
                             child:  Text("See All" , style: TextStyle(
                               color: Colors.pinkAccent,
                               fontSize: 16,
                               fontWeight: FontWeight.bold,
                             ),),
                             onTap: (){
                               ///todo;dvmslmldmdmdmdhmghkry
                             },
                           )
                         ],
                       ),
                       SizedBox( height: 20),
                       Container(
                         height: 180,
                         child: ListView.builder(
                           itemCount: 1,
                           scrollDirection: Axis.horizontal,
                           itemBuilder: (  context , index){
                             return  Row(
                               children: [
                                   Row(
                                     children: [
                                       Container(
                                           width: 150,
                                           height: 170,
                                           child: Column(
                                             children: [
                                               ClipRect(
                                                 child: Image.network(
                                                     'https://i.ibb.co/1vXpqVs/flutter-logo.jpg'
                                                 ),
                                               ),
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Text("LE 270.00"),
                                                  Icon(Icons.favorite_border)
                                                ],
                                               ),
                                               Text('Woman T-shirt'  ,
                                                 style: TextStyle(
                                                   color: Colors.black54,
                                                   fontWeight: FontWeight.w400,
                                                   fontSize: 14
                                                 ) ,
                                                 textAlign: TextAlign.start,
                                               )
                                             ],
                                           ),
                                           decoration: BoxDecoration(
                                             color: Colors.white,
                                             boxShadow: [
                                               BoxShadow(
                                                 color: Colors.grey.withOpacity(0.5),
                                                 spreadRadius: 5,
                                                 blurRadius: 7,
                                                 offset: Offset(0, 3),
                                               ),

                                             ],

                                           )
                                       ),
                                     ],
                                   ),

                                 SizedBox(
                                   width: 10,
                                 ),
                                  Row(
                                     children: [
                                       Container(
                                           width: 150,
                                           height: 170,
                                           child: Column(
                                             children: [
                                               ClipRect(
                                                 child: Image.network(
                                                     'https://i.ibb.co/1vXpqVs/flutter-logo.jpg'
                                                 ),
                                               ),
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                 children: [
                                                   Text("LE 270.00"),
                                                   Icon(Icons.favorite_border)
                                                 ],
                                               ),
                                               Text('Men T-shirt'  ,
                                                 style: TextStyle(
                                                     color: Colors.black54,
                                                     fontWeight: FontWeight.w400,
                                                     fontSize: 14
                                                 ) ,
                                                 textAlign: TextAlign.start,
                                               )
                                             ],
                                           ),
                                           decoration: BoxDecoration(
                                             color: Colors.white,
                                             boxShadow: [
                                               BoxShadow(
                                                 color: Colors.grey.withOpacity(0.5),
                                                 spreadRadius: 5,
                                                 blurRadius: 7,
                                                 offset: Offset(0, 3),
                                               ),

                                             ],

                                           )
                                       ),


                                     ],
                                   ),
                                 SizedBox(
                                   width: 10,
                                 ),
                                 Row(
                                     children: [
                                       Container(
                                           width: 150,
                                           height: 170,
                                           child: Column(
                                             children: [
                                               ClipRect(
                                                 child: Image.network(
                                                     'https://i.ibb.co/1vXpqVs/flutter-logo.jpg'
                                                 ),
                                               ),
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                 children: [
                                                   Text("LE 270.00"),
                                                   Icon(Icons.favorite_border)
                                                 ],
                                               ),
                                               Text('Kid T-shirt'  ,
                                                 style: TextStyle(
                                                     color: Colors.black54,
                                                     fontWeight: FontWeight.w400,
                                                     fontSize: 14
                                                 ) ,
                                                 textAlign: TextAlign.start,
                                               )
                                             ],
                                           ),
                                           decoration: BoxDecoration(
                                             color: Colors.white,
                                             boxShadow: [
                                               BoxShadow(
                                                 color: Colors.grey.withOpacity(0.5),
                                                 spreadRadius: 5,
                                                 blurRadius: 7,
                                                 offset: Offset(0, 3),
                                               ),

                                             ],

                                           )
                                       ),
                                     ],
                                   ),
                               ],
                             );
                           },
                         ),
                       ),
                       SizedBox( height: 20),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Best Selling" , style: TextStyle(
                             color: Colors.black,
                             fontSize: 16,
                             fontWeight: FontWeight.bold,
                           ),),

                           InkWell(
                             child:  Text("See All" , style: TextStyle(
                               color: Colors.pinkAccent,
                               fontSize: 16,
                               fontWeight: FontWeight.bold,
                             ),),
                             onTap: (){
                               ///todo;dvmslmldmdmdmdhmghkry
                             },
                           )
                         ],
                       ),
                       SizedBox( height: 20),
                       Container(
                         height: 180,
                         child: ListView.builder(
                           itemCount: 1,
                           scrollDirection: Axis.horizontal,
                           itemBuilder: (  context , index){
                             return  Row(
                               children: [
                                  Row(
                                     children: [
                                       Container(
                                           width: 150,
                                           height: 170,
                                           child: Column(
                                             children: [
                                               ClipRect(
                                                 child: Image.network(
                                                     'https://i.ibb.co/1vXpqVs/flutter-logo.jpg'
                                                 ),
                                               ),
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                 children: [
                                                   Text("LE 270.00"),
                                                   Icon(Icons.favorite_border)
                                                 ],
                                               ),
                                               Text('Woman T-shirt'  ,
                                                 style: TextStyle(
                                                     color: Colors.black54,
                                                     fontWeight: FontWeight.w400,
                                                     fontSize: 14
                                                 ) ,
                                                 textAlign: TextAlign.start,
                                               )
                                             ],
                                           ),
                                           decoration: BoxDecoration(
                                             color: Colors.white,
                                             boxShadow: [
                                               BoxShadow(
                                                 color: Colors.grey.withOpacity(0.5),
                                                 spreadRadius: 5,
                                                 blurRadius: 7,
                                                 offset: Offset(0, 3),
                                               ),

                                             ],

                                           )
                                       ),
                                     ],
                                   ),
                                 SizedBox(
                                   width: 10,
                                 ),
                                 Row(
                                     children: [
                                       Container(
                                           width: 150,
                                           height: 170,
                                           child: Column(
                                             children: [
                                               ClipRect(
                                                 child: Image.network(
                                                     'https://i.ibb.co/1vXpqVs/flutter-logo.jpg'
                                                 ),
                                               ),
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                 children: [
                                                   Text("LE 270.00"),
                                                   Icon(Icons.favorite_border)
                                                 ],
                                               ),
                                               Text('Men T-shirt'  ,
                                                 style: TextStyle(
                                                     color: Colors.black54,
                                                     fontWeight: FontWeight.w400,
                                                     fontSize: 14
                                                 ) ,
                                                 textAlign: TextAlign.start,
                                               )
                                             ],
                                           ),
                                           decoration: BoxDecoration(
                                             color: Colors.white,
                                             boxShadow: [
                                               BoxShadow(
                                                 color: Colors.grey.withOpacity(0.5),
                                                 spreadRadius: 5,
                                                 blurRadius: 7,
                                                 offset: Offset(0, 3),
                                               ),

                                             ],

                                           )
                                       ),


                                     ],
                                   ),
                                 SizedBox(
                                   width: 10,
                                 ),
                                 Row(
                                     children: [
                                       Container(
                                           width: 150,
                                           height: 170,
                                           child: Column(
                                             children: [
                                               ClipRect(
                                                 child: Image.network(
                                                     'https://i.ibb.co/1vXpqVs/flutter-logo.jpg'
                                                 ),
                                               ),
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                 children: [
                                                   Text("LE 270.00"),
                                                   Icon(Icons.favorite_border)
                                                 ],
                                               ),
                                               Text('Kid T-shirt'  ,
                                                 style: TextStyle(
                                                     color: Colors.black54,
                                                     fontWeight: FontWeight.w400,
                                                     fontSize: 14
                                                 ) ,
                                                 textAlign: TextAlign.start,
                                               )
                                             ],
                                           ),
                                           decoration: BoxDecoration(
                                             color: Colors.white,
                                             boxShadow: [
                                               BoxShadow(
                                                 color: Colors.grey.withOpacity(0.5),
                                                 spreadRadius: 5,
                                                 blurRadius: 7,
                                                 offset: Offset(0, 3),
                                               ),

                                             ],

                                           )
                                       ),
                                     ],
                                   ),
                               ],
                             );
                           },
                         ),
                       ),
                     ],
                   )
               ),
             ),
           ),

    ]),
     ),
    );

  }
}
