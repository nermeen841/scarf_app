import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:scarf_app/presentation/Screens/Category_page/women_category.dart';
class WomenBuyScreen extends StatefulWidget {
  @override
  _WomenBuyScreenState createState() => _WomenBuyScreenState();
}

class _WomenBuyScreenState extends State<WomenBuyScreen> {

  List<bool> _selec1 = List.generate( 2, (_)=> false);
  List<bool> _selec2 = List.generate( 4, (_)=> false);
  List<bool> _selec3 = List.generate( 5, (_)=> false);
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back , color: Colors.black,),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute( builder: (context)=> WomenCategory()));
          },
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon( Icons.notifications_none, color: Colors.black,),
            onPressed: (){
              ///TODO: VKXGSGKSGGAGAGKpgkprhe
            },
          )
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only( top: 10 , left: 15, right: 15),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        padding: EdgeInsets.only( left: 10 , right: 10),
                        child: Column(
                          children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 150,
                            child:   PageIndicatorContainer(
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("LE 150.0" ,
                                  style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.w400 ,
                                      fontSize: 14),),
                                ToggleButtons(
                                 // color: Colors.deepOrange,
                                  selectedColor: Colors.deepOrange,
                                  isSelected: _selec1,
                                  children: [
                                    Icon( Icons.favorite_border,),
                                    Text("BUY" ,
                                      style: TextStyle( fontSize: 14 , fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                  onPressed: ( index){},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                SizedBox(
                  height: 20,
                ),
                Text("Woman T-shirt" ,
                  style: TextStyle(
                      color: Colors.black ,
                      fontWeight: FontWeight.bold ,
                      fontSize: 18),),
                SizedBox(
                  height: 15,
                ),
                Text("csgmlefwmeksdkerhkerpe \n vl;lsgeglw[elq[la[plweg[eglpr[wr[[g \n xlvxlsglsgslgjbksfsdsddhhsr",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Text("Select Size" ,
                  style: TextStyle(
                      color: Colors.black ,
                      fontWeight: FontWeight.bold ,
                      fontSize: 18),),
                SizedBox(
                  height: 15,
                ),
                ToggleButtons(
                  //color: Colors.grey,
                  selectedBorderColor: Colors.white,
                  selectedColor: Colors.deepOrange,
                  isSelected: _selec2,
                  children: [
                    Text("S" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 14),),
                    Text("M" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 14),),
                    Text("L" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 14),),
                    Text("XL" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 14),)
                  ],
                  onPressed: ( index){},
                ),

                SizedBox(
                  height: 20,
                ),

                Text("Select Color" ,
                  style: TextStyle(
                      color: Colors.black ,
                      fontWeight: FontWeight.bold ,
                      fontSize: 18),),

                SizedBox(
                  height: 15,
                ),

                ToggleButtons(
                  selectedBorderColor: Colors.white,
                  isSelected: _selec3,
                  children: [
                    Container(color: Colors.purple,),
                    Container( color: Colors.deepPurple),
                    Container( color: Colors.indigo),
                    Container( color: Colors.deepOrange),
                    Container( color: Colors.red),
                  ],
                  onPressed: (index){},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
