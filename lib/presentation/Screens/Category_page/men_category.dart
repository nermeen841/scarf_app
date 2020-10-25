import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scarf_app/presentation/Screens/bottom_navigation_bar_screen/bottom_navigation_bar.dart';

class MenCategory extends StatefulWidget {
  @override
  _MenCategoryState createState() => _MenCategoryState();
}

class _MenCategoryState extends State<MenCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      elevation: 0.0,
      title: Text("MEN Category" , style: TextStyle( color: Colors.blueGrey, fontWeight: FontWeight.w400),),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back , color: Colors.black,),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute( builder: ( context)=> BottomNavigationBarScreen()));
        },
      ),

      actions: [
        IconButton(
          icon: Icon( Icons.notifications_none , color: Colors.black,),
          onPressed: (){},
        )
      ],
    ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 10, left: 15, right: 15),
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.8,
          child: GridView.builder(
            itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: ( BuildContext context , index){
              return Container(
                  width: 130,
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
              );
              },
          ),
        ),
      ),
    );
  }
}
