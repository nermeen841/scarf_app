import 'package:flutter/material.dart';
import 'package:scarf_app/presentation/Screens/bottom_navigation_bar_screen/bottom_navigation_bar.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {

    final drawerItems = Padding(
      padding: EdgeInsets.only( left: 20, right: 20),
      child: ListView(
        children: [
          Container(
            child: Icon( Icons.arrow_forward_ios , color: Colors.pinkAccent, size: 25,),
            decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.circular(50),
              shape: BoxShape.circle,
              boxShadow:  [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
          ),
          SizedBox( height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("REFINE RESULTS" , style: TextStyle( color: Colors.blueGrey , fontSize: 14 , fontWeight: FontWeight.w400),),
              InkWell(
                onTap: (){
                  ///TODO: clear all
                },
                child: Text("CLEAR" , style: TextStyle( color: Colors.pinkAccent , fontWeight: FontWeight.w400 , fontSize: 14),),
              ),
            ],
          ),
          SizedBox( height: 30,),
          InkWell(
            child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Category" , style: TextStyle( color: Colors.black54 , fontWeight: FontWeight.bold, fontSize: 14),),
                Icon(Icons.arrow_forward_ios , size: 15,)
              ],
            ),
            onTap: (){
              ///TODO: GO TO CATEGORY PAGE
            },
          ),
          SizedBox( height: 15,),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Condition" , style: TextStyle( color: Colors.black54 , fontWeight: FontWeight.bold , fontSize: 14),),
                Icon(Icons.arrow_forward_ios , size: 15,)
              ],
            ),
            onTap: (){
              ///TODO: GO TO CATEGORY PAGE
            },
          ),
          SizedBox( height: 15,),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Material" , style: TextStyle( color: Colors.black54 , fontWeight: FontWeight.bold , fontSize: 14),),
                Icon(Icons.arrow_forward_ios , size: 15,)
              ],
            ),
            onTap: (){
              ///TODO: GO TO CATEGORY PAGE
            },
          ),
          SizedBox( height: 15,),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Color" , style: TextStyle( color: Colors.black54 , fontWeight: FontWeight.bold, fontSize: 14),),
                Icon(Icons.arrow_forward_ios , size: 15,)
              ],
            ),
            onTap: (){
              ///TODO: GO TO CATEGORY PAGE
            },
          ),
          SizedBox( height: 15,),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Brand" , style: TextStyle( color: Colors.black54 , fontWeight: FontWeight.bold , fontSize: 14),),
                Icon(Icons.arrow_forward_ios , size: 15,)
              ],
            ),
            onTap: (){
              ///TODO: GO TO CATEGORY PAGE
            },
          ),
          SizedBox( height: 15,),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Size" , style: TextStyle( color: Colors.black54 , fontWeight: FontWeight.bold , fontSize: 14),),
                Icon(Icons.arrow_forward_ios , size: 15,)
              ],
            ),
            onTap: (){
              ///TODO: GO TO CATEGORY PAGE
            },
          ),
          SizedBox( height: 15,),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Price Range" , style: TextStyle( color: Colors.black54 , fontWeight: FontWeight.bold , fontSize: 14),),
                Icon(Icons.arrow_forward_ios , size: 15,)
              ],
            ),
            onTap: (){
              ///TODO: GO TO CATEGORY PAGE
            },
          ),
          SizedBox( height: 150,),
          MaterialButton(
            minWidth: 150,
            height: 40,
            elevation: 0,
            child: Text(
              "APPLY FILTERS",
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
        ],
      ),
    );




    return Scaffold(
      drawer: Drawer(
        child: drawerItems,
      )


    );
  }
}
