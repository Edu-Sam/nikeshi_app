import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nikesha_ui_app/widgets/custom_carousel.dart';
import'package:carousel_slider/carousel_slider.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:nikesha_ui_app/widgets/product_catalogue.dart';
import 'package:nikesha_ui_app/pages/cart_details.dart';


class  HomePageCarousel extends StatefulWidget {
  HomePageCarousel({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePageState createState() => HomePageState();

}

class HomePageState extends State<HomePageCarousel> with SingleTickerProviderStateMixin{
  TabController tabController;
  int _currentIndex=0;

  List cardList=[
    Item1(),
    Item2(),
    Item3(),
    Item4(),

  ];


  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  List<T> map3<T>(List list, Function handler) {
    List<T> result3 = [];
    for (var i = 0; i < list.length; i++) {
      result3.add(handler(i, list[i]));
    }
    return result3;

  }
  List<T> map4<T>(List list, Function handler) {
    List<T> result4 = [];
    for (var i = 0; i < list.length; i++) {
      result4.add(handler(i, list[i]));
    }
    return result4;
  }
  int _currentIndex1=0;


  List cardList1=[

    Item5(),
    Item6(),
    Item7(),
    Item8(),
    Item9(),
    Item10(),
    Item11(),
    Item12(),
    Item13(),
    Item14(),
  ];

  int _currentIndex3=0;


  List cardList3=[
    Item15(),
    Item16(),
    Item17(),
    Item18(),

  ];
  int _currentIndex4=0;


  List cardList4=[
    Item19(),
    Item20(),
    Item21(),
    Item22(),

  ];
  int _currentIndex5=0;

  List cardList5=[
    Item23(),
    Item24(),
    Item25(),
    Item26(),
  ];
  List<T> map1<T>(List list, Function handler) {
    List<T> result1 = [];
    for (var i = 0; i < list.length; i++) {
      result1.add(handler(i, list[i]));
    }

    return result1;

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Metro Online", style: TextStyle(
            color: Color.fromRGBO(0,0,139,1),
            fontSize: 15,
            fontFamily: 'Metro Online',
          fontWeight: FontWeight.w700
        ),
        ),
        centerTitle: true,
        actions: [

          Icon(Icons.search, size: 30,),

          IconButton(
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>CartDetails()));
            },
            icon:Icon(Icons.shopping_cart,size: 30,)),

          Icon(Icons.more_vert,size: 30)
        ],
        iconTheme: IconThemeData(
          color: Color.fromRGBO(0,0,139,1)
        ),
      ),

    drawer: Drawer(

    ),
    //.  backgroundColor: Colors.white,
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column( children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0),
              child: Row(
                children: <Widget>[


                ],
              ),

            ),
            courosel(),


            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),


            ),
            ProductCatalogue(product_header:'metro post',),



            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),

              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Metro Post"),

                  InkWell(
                    onTap: () {

                    }
                    ,
                    child:FlatButton(
                      onPressed: () {
                    //    Navigator.push(context,MaterialPageRoute(builder: (context)=>Fruits()));
                      },
                      child: new Text("view All"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                width: 600,
                height: 350,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),

                color: Colors.white,
                alignment: Alignment.topLeft,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text("He'd have you all unravel at the"),
                      color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Heed not the rabble'),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Sound of screams but the'),
                      color: Colors.teal[300],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Who scream'),
                      color: Colors.teal[400],
                    ),


                  ],
                )


            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),

              child:  Row(
                children: [
                  Text("Metro Post"),

                ],
              ),
            ),
            ProductCatalogue(product_header:'title',),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),

              child:  Row(
                children: [
                  Text("Metro Post"),
                ],
              ),
            ),
            Container(
                width: 600,
                height: 350,
                // padding: const EdgeInsets.symmetric(horizontal: 8.0),

                color: Colors.white,
                alignment: Alignment.topLeft,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text("He'd have you all unravel at the"),
                      color: Colors.teal[100],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Heed not the rabble'),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Sound of screams but the'),
                      color: Colors.teal[300],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Who scream'),
                      color: Colors.teal[400],
                    ),
                  ],
                )

              /*      child:Column(
             children: [
               Row(
                 children: [
                   Container(
                     color: Colors.blue,
                     width: 200,
                     height: 200,
                   ),
                   Spacer(),
                   Container(
                     color: Colors.blue,
                     width: 200,
                     height: 200,
                   ),
                 ],
               ),
               Spacer(),//your 1st Row
               Row(
                 children: [
                   Container(
                     color: Colors.blue,
                     width: 200,
                     height: 200,
                   ),
                   Spacer(),
                   Container(
                     color: Colors.blue,
                     width: 200,
                     height: 200,
                   ),
                 ],
               ),
           *//*    Container(
                 color: Colors.blue,
                 width: 200,
                 height: 200,
               ),
               Spacer(),
               Container(
                 color: Colors.blue,
                 width: 200,
                 height: 200,
               ),*//*
             ],
           ),*/

              /* Row(
             children: [
               Container(
                 color: Colors.white,
                 width: 200,
                 height: 200,
               ),
               Spacer(),
               Container(
                 color: Colors.blue,
                 width: 200,
                 height: 200,
               ),
             ],
           ),*/
            ),
            ProductCatalogue(product_header:'title',),

            ProductCatalogue(product_header:'title',),


            Container(
              width: 600,
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              color: Colors.grey,

              /*    decoration: BoxDecoration(
             border: Border.all(
               color: Colors.grey,
             ),
             color: Colors.grey,
           ),*/
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,


                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical:10.0),
                        child:Column(
                          children: [
                            Icon(
                              Icons.local_shipping_outlined,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ],
                        ),//VVDVMSDSVARFVSM
                      ),
                      //lower Mineral
                      //ddd
                      //high School
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),

                        child:Column(
                          children: [
                            Icon(
                              Icons.beenhere_outlined,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child:Column(
                          children: [
                            Icon(
                              Icons.payment_rounded,
                              color: Colors.black,
                              size: 24.0,
                            ),                        ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child:Column(
                          children: [
                            Icon(
                              Icons. payment_rounded,
                              color: Colors.black,
                              size: 24.0,
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Center(
                    child:Column(
                      children: [
                        Text("@METRO PAKISTAN \n Designed and Develped by Shopilyv "),

                      ],
                    ),




                  )
                ],
              ) ,
              /* child: ,*/
            ),
            /*    TabBar(
              controller: tabController,
              indicatorColor: Colors.green,
              indicatorWeight: 3.0,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text("Fruits", style: TextStyle(
                      fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontFamily: 'OpenSans'
                  ),),
                ),
                Tab(
                  child: Text("Vegetables", style: TextStyle(
                      fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontFamily: 'OpenSans'
                  ),),
                ),
                Tab(
                  child: Text("Nuts & Seeds", style: TextStyle(
                      fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontFamily: 'OpenSans'
                  ),),
                ),
                Tab(
                  child: Text("Dairy", style: TextStyle(
                      fontSize: 2.5 * SizeConfig.textMultiplier,
                      fontFamily: 'OpenSans'
                  ),),
                ),
              ]),*/

            /* Expanded(
            child: Container(
              child: Drawer(
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 30,horizontal: 0.0),
                  //  child: CategoriesPage(),
                  )
              ),
          *//*    child: TabBarView(
                  controller: tabController,
                  children: <Widget>[
                    Fruits(),
                    Vegetables(),
                    Nuts(),
                    Dairy(),
                  ]),*//*
            ),
          )*/

          ],),



        ),
      ),

    );
  }
}
class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 80.0,
      margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),

      decoration:  BoxDecoration(
        /*gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
        ),*/
        image:  DecorationImage(
            image: AssetImage("asset/vegetables.png"),
            fit: BoxFit.cover
        ),
      ),

      /*    child: Container(
        margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            color: Colors.blue.shade200,
            image: DecorationImage(
                image: AssetImage("images/bag_1.png"),
                fit: BoxFit.cover
            )),
      ),*/
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xff5f2c82), Color(0xff49a09d)]
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Container(
            height: 80.0,
            width: 80.0,
            margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),

            decoration:  BoxDecoration(
              /*gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
        ),*/
              image:  DecorationImage(
                  image: AssetImage("assets/vegetables.jpg"),
                  fit: BoxFit.cover
              ),
            ),

          ),
        ],
      ),
    );
  }
}
class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xffff4000),Color(0xffffcc66),]
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Image.asset(
            "assets/vegetables.jpg",
            height: 150.0,
            width: 150,
            fit: BoxFit.cover,
          ),


        ],
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Text(
              "Data",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Text(
              "Data",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600
              )
          ),
        ],
      ),
    );
  }
}

class Item5 extends StatelessWidget {
  const Item5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xffff4000),Color(0xffffcc66),]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Data5",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Padding(

            padding:EdgeInsets.symmetric(
                vertical: 13.0,horizontal: 0.0
            ),

          ),
          RaisedButton.icon(
            color:Color.fromRGBO(214,24,195,1),
            shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(18.0),
                side: BorderSide(color: Color.fromRGBO(214,24,195,1))
            ),
            onPressed: (){},

            icon:Icon(Icons.add_shopping_cart_outlined,
                color:Colors.white
            ),
            textColor: Colors.white,
            elevation: 10,
            label: Text('Add to cart',style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w400,color: Colors.white),),


          )
        ],
      ),
    );
  }
}

class Item6 extends StatelessWidget {
  const Item6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xff5f2c82), Color(0xff49a09d)]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Data6",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Padding(

            padding:EdgeInsets.symmetric(
                vertical: 13.0,horizontal: 0.0
            ),

          ),
          RaisedButton.icon(
            color:Color.fromRGBO(214,24,195,1),
            shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(18.0),
                side: BorderSide(color: Color.fromRGBO(214,24,195,1))
            ),
            onPressed: (){},

            icon:Icon(Icons.add_shopping_cart_outlined,
                color:Colors.white
            ),
            textColor: Colors.white,
            elevation: 10,
            label: Text('Add to cart',style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w400,color: Colors.white),),


          )
        ],
      ),
    );
  }
}
class Item7 extends StatefulWidget {
  const Item7({Key key}) : super(key: key);

  @override
  _Item7State createState() => _Item7State();
}

class _Item7State extends State<Item7> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xffff4000),Color(0xffffcc66),]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Data7",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Padding(

            padding:EdgeInsets.symmetric(
                vertical: 13.0,horizontal: 0.0
            ),

          ),
          RaisedButton.icon(
            color:Color.fromRGBO(214,24,195,1),
            shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(18.0),
                side: BorderSide(color: Color.fromRGBO(214,24,195,1))
            ),
            onPressed: (){},

            icon:Icon(Icons.add_shopping_cart_outlined,
                color:Colors.white
            ),
            textColor: Colors.white,
            elevation: 10,
            label: Text('Add to cart',style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w400,color: Colors.white),),


          )
        ],
      ),
    );
  }
}

class Item8 extends StatelessWidget {
  const Item8({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(    width: MediaQuery.of(context).size.width * 1/2,
      height: MediaQuery.of(context).orientation==Orientation.portrait ?
      MediaQuery.of(context).size.height *1/4 :
      MediaQuery.of(context).size.width * 1/4,
      //     color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.0,horizontal: 0.0),
            child: Container(
              margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  color: Colors.blue.shade200,
                  image: DecorationImage(
                      image: AssetImage("images/bag_1.png"))),
            ),
          ),

          Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
              child: Container(
                width:MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.width,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 2.0),
                      child: Wrap(
                        children: [
                          Text('Cardbury Perk 5.9 GM X24',style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black54,
                              fontSize: 10
                          ),)
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                      child: Wrap(
                        children: [
                          Text("Ksh 1000",style: TextStyle(
                              fontWeight: FontWeight.w400,fontSize: 8,
                              color: Colors.black,fontFamily: 'Open Sans'
                          ),)
                        ],
                      ),
                    ),

                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 0.0),
                        child: Container(
                          width: 100,
                          height: 20,
                          child: FlatButton.icon(
                            onPressed: (){},
                            icon: Icon(Icons.shopping_cart,color: Colors.white,size: 10,),
                            label: Text('ADD TO CART',style: TextStyle(
                                color: Colors.white,fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                                fontSize: 10
                            ),),
                            color: Color.fromRGBO(0,0,139,1),
                          ),
                        )
                    ),

                  ],
                ),
              )
          )
        ],
      ),);
  }
}

class Item9 extends StatelessWidget {
  const Item9({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xffff4000),Color(0xffffcc66),]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 0.0),
            child: Container(
              margin: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  color: Colors.blue.shade200,
                  image: DecorationImage(
                      image: AssetImage("images/bag_1.png"))),
            ),
          ),

          Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0,horizontal: 0.0),
              child: Container(
                width: 100,
                height: 30,
                child: FlatButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.shopping_cart,color: Colors.white,size: 10,),
                  label: Text('ADD TO CART',style: TextStyle(
                      color: Colors.white,fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                      fontSize: 10
                  ),),
                  color: Color.fromRGBO(0,0,139,1),
                ),
              )
          ),
        ],
      ),
    );
  }
}

class Item10 extends StatelessWidget {
  const Item10({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xff5f2c82), Color(0xff49a09d)]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Data10",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Padding(

            padding:EdgeInsets.symmetric(
                vertical: 13.0,horizontal: 0.0
            ),

          ),
          RaisedButton.icon(
            color:Color.fromRGBO(214,24,195,1),
            shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(18.0),
                side: BorderSide(color: Color.fromRGBO(214,24,195,1))
            ),
            onPressed: (){},

            icon:Icon(Icons.add_shopping_cart_outlined,
                color:Colors.white
            ),
            textColor: Colors.white,
            elevation: 10,
            label: Text('Add to cart',style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w400,color: Colors.white),),


          )
        ],
      ),
    );
  }
}
class Item11 extends StatelessWidget {
  const Item11({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xffff4000),Color(0xffffcc66),]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Data11",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Padding(

            padding:EdgeInsets.symmetric(
                vertical: 13.0,horizontal: 0.0
            ),

          ),
          RaisedButton.icon(
            color:Color.fromRGBO(214,24,195,1),
            shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(14.0),
                side: BorderSide(color: Color.fromRGBO(214,24,195,1))
            ),
            onPressed: (){},

            icon:Icon(Icons.add_shopping_cart_outlined,
                color:Colors.white
            ),
            textColor: Colors.white,
            elevation: 10,
            label: Text('Add to cart',style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w400,color: Colors.white),),


          )
        ],
      ),
    );
  }
}

class Item12 extends StatelessWidget {
  const Item12({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Data12",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),

          Padding(
            padding:EdgeInsets.symmetric(
                vertical: 13.0,horizontal: 0.0
            ),
          ),
          RaisedButton.icon(
            color:Color.fromRGBO(214,24,195,1),
            shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(18.0),
                side: BorderSide(color: Color.fromRGBO(214,24,195,1))
            ),
            onPressed: (){},

            icon:Icon(Icons.add_shopping_cart_outlined,
                color:Colors.white
            ),
            textColor: Colors.white,
            elevation: 10,
            label: Text('Add to cart',style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w400,color: Colors.white),),


          )
        ],
      ),
    );
  }
}

class Item13 extends StatelessWidget {
  const Item13({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Data13",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Padding(

            padding:EdgeInsets.symmetric(
                vertical: 13.0,horizontal: 0.0
            ),

          ),
          RaisedButton.icon(
            color:Color.fromRGBO(214,24,195,1),
            shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(18.0),
                side: BorderSide(color: Color.fromRGBO(214,24,195,1))
            ),
            onPressed: (){},

            icon:Icon(Icons.add_shopping_cart_outlined,
                color:Colors.white
            ),
            textColor: Colors.white,
            elevation: 10,
            label: Text('Add to cart',style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w400,color: Colors.white),),


          )
        ],
      ),
    );
  }
}

class Item14 extends StatelessWidget {
  const Item14({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Data14",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Padding(

            padding:EdgeInsets.symmetric(
                vertical: 13.0,horizontal: 0.0
            ),

          ),
          RaisedButton.icon(
            color:Color.fromRGBO(214,24,195,1),
            shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(18.0),
                side: BorderSide(color: Color.fromRGBO(214,24,195,1))
            ),
            onPressed: (){},

            icon:Icon(Icons.add_shopping_cart_outlined,
                color:Colors.white
            ),
            textColor: Colors.white,
            elevation: 10,
            label: Text('Add to cart',style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w400,color: Colors.white),),


          )
        ],
      ),
    );
  }
}

class Item15 extends StatelessWidget {
  const Item15({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Data15",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Padding(

            padding:EdgeInsets.symmetric(
                vertical: 13.0,horizontal: 0.0
            ),

          ),
          RaisedButton.icon(
            color:Color.fromRGBO(214,24,195,1),
            shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(18.0),
                side: BorderSide(color: Color.fromRGBO(214,24,195,1))
            ),
            onPressed: (){},

            icon:Icon(Icons.add_shopping_cart_outlined,
                color:Colors.white
            ),
            textColor: Colors.white,
            elevation: 10,
            label: Text('Add to cart',style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w400,color: Colors.white),),


          )
        ],
      ),
    );
  }
}
class Item16 extends StatelessWidget {
  const Item16({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Data16",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Padding(

            padding:EdgeInsets.symmetric(
                vertical: 13.0,horizontal: 0.0
            ),

          ),
          RaisedButton.icon(
            color:Color.fromRGBO(214,24,195,1),
            shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(18.0),
                side: BorderSide(color: Color.fromRGBO(214,24,195,1))
            ),
            onPressed: (){},

            icon:Icon(Icons.add_shopping_cart_outlined,
                color:Colors.white
            ),
            textColor: Colors.white,
            elevation: 10,
            label: Text('Add to cart',style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w400,color: Colors.white),),


          )
        ],
      ),
    );
  }
}
class Item17 extends StatelessWidget {
  const Item17({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Data17",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Padding(

            padding:EdgeInsets.symmetric(
                vertical: 13.0,horizontal: 0.0
            ),

          ),
          RaisedButton.icon(
            color:Color.fromRGBO(214,24,195,1),
            shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(18.0),
                side: BorderSide(color: Color.fromRGBO(214,24,195,1))
            ),
            onPressed: (){},

            icon:Icon(Icons.add_shopping_cart_outlined,
                color:Colors.white
            ),
            textColor: Colors.white,
            elevation: 10,
            label: Text('Add to cart',style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w400,color: Colors.white),),


          )
        ],
      ),
    );
  }
}
class Item18 extends StatelessWidget {
  const Item18({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Data18",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Padding(

            padding:EdgeInsets.symmetric(
                vertical: 13.0,horizontal: 0.0
            ),

          ),
          RaisedButton.icon(
            color:Color.fromRGBO(214,24,195,1),
            shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(18.0),
                side: BorderSide(color: Color.fromRGBO(214,24,195,1))
            ),
            onPressed: (){},

            icon:Icon(Icons.add_shopping_cart_outlined,
                color:Colors.white
            ),
            textColor: Colors.white,
            elevation: 10,
            label: Text('Add to cart',style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w400,color: Colors.white),),


          )
        ],
      ),
    );
  }
}
class Item19 extends StatelessWidget {
  const Item19({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xffff4000),Color(0xffffcc66),]
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Text(
              "Data1",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Text(
              "Data",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600
              )
          ),
        ],
      ),
    );
  }
}
class Item20 extends StatelessWidget {
  const Item20({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xffff4000),Color(0xffffcc66),]
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Text(
              "Data1",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Text(
              "Data",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600
              )
          ),
        ],
      ),
    );
  }
}
class Item21 extends StatelessWidget {
  const Item21({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xffff4000),Color(0xffffcc66),]
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Text(
              "Data1",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Text(
              "Data",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600
              )
          ),
        ],
      ),
    );
  }
}
class Item22 extends StatelessWidget {
  const Item22({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xffff4000),Color(0xffffcc66),]
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Data9",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Padding(

            padding:EdgeInsets.symmetric(
                vertical: 13.0,horizontal: 0.0
            ),

          ),
          RaisedButton.icon(
            color:Color.fromRGBO(214,24,195,1),
            shape: RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(18.0),
                side: BorderSide(color: Color.fromRGBO(214,24,195,1))
            ),
            onPressed: (){},

            icon:Icon(Icons.add_shopping_cart_outlined,
                color:Colors.white
            ),
            textColor: Colors.white,
            elevation: 10,
            label: Text('Add to cart',style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w400,color: Colors.white),),


          )
        ],
      ),
    );
  }
}
class Item23 extends StatelessWidget {
  const Item23({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xffff4000),Color(0xffffcc66),]
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Text(
              "Data1",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Text(
              "Data",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600
              )
          ),
        ],
      ),
    );
  }
}
class Item24 extends StatelessWidget {
  const Item24({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xffff4000),Color(0xffffcc66),]
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Text(
              "Data1",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Text(
              "Data",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600
              )
          ),
        ],
      ),
    );
  }
}
class Item25 extends StatelessWidget {
  const Item25({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xffff4000),Color(0xffffcc66),]
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Text(
              "Data1",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Text(
              "Data",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600
              )
          ),
        ],
      ),
    );
  }
}
class Item26 extends StatelessWidget {
  const Item26({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xffff4000),Color(0xffffcc66),]
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Text(
              "Data1",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
              )
          ),
          Text(
              "Data",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600
              )
          ),
        ],
      ),
    );
  }
}