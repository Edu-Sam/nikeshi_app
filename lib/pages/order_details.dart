import 'package:flutter/material.dart';
import 'package:nikesha_ui_app/widgets/product_catalogue.dart';
import 'package:nikesha_ui_app/widgets/footer.dart';

class OrderDetail extends StatefulWidget{
     OrderDetail({Key key}):super(key:key);

     @override
  OrderDetailState createState()=>new OrderDetailState();
}

class OrderDetailState extends State<OrderDetail>{
  bool is_expanded=false;
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title:Text('View Cart',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color.fromRGBO(0,0,139,1)),),
        // centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){},
            icon:Icon(Icons.search,color: Color.fromRGBO(0,0,139,1),size: 30,),
          ),
          IconButton(
              onPressed: (){},
              icon:Icon(Icons.shopping_cart,color: Color.fromRGBO(0,0,139,1),size:30)
          ),
          Builder(
              builder: (context)=>IconButton(
                  onPressed: (){Scaffold.of(context).openEndDrawer();},
                  icon:Icon(Icons.menu_rounded,color: Color.fromRGBO(0,0,139,1),size: 30,)
              )
          )
        ],
        iconTheme: IconThemeData(
            color: Color.fromRGBO(0,0,139,1)),
      ),
      body: Container(
        width:MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(

                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).orientation==Orientation.portrait ?
                  MediaQuery.of(context).size.height * 1/3
                    :MediaQuery.of(context).size.width * 1/3,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(1.0,1.0),
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                        color: Colors.black12,
                      ),

                    ]
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top:20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
                                child: InkWell(
                                  onTap: (){},
                                  child: Row(
                                    children: [
                                      Text('Save to List',style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Open Sans'
                                      ),),
                                      Icon(Icons.assignment,color: Colors.black54,size: 30,)
                                    ],
                                  ),
                                ),
                              ),

                            ],),
                        ),

                        Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 3/4,
                            height: MediaQuery.of(context).orientation==Orientation.portrait ?
                            MediaQuery.of(context).size.height * 1/6 :
                            MediaQuery.of(context).size.width * 1/6,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage("https://media.npr.org/assets/news/2010/04/26/groceries_wide-0cf2b0fc41c9b82c329067ffe04d787041c17251.jpg?s=1400")
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10.0,top: 40.0),
                                child: InkWell(
                                  onTap: (){},
                                  child: Row(
                                    children: [
                                      Text('Share',style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Open Sans'
                                      ),),
                                      Icon(Icons.share,color: Colors.black54,size: 30,)
                                    ],
                                  ),
                                ),
                              ),

                            ],),
                        ),
                      ],
                    ),
                  )
                ),
              ),
              
              Padding(
                padding: EdgeInsets.only(bottom: 10.0,left: 10.0,right: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).orientation==Orientation.portrait ?
                  MediaQuery.of(context).size.height * 1/4:
                  MediaQuery.of(context).size.width * 1/4
                  ,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(1.0,1.0),
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                        color: Colors.black12,
                      ),
                    ]
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                              child: Text('Onions Per 500GM',
                              style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                                fontSize: 15
                              ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
                                    child: Container(
                                      width: 1,
                                      height: 1,
                                      child: Checkbox(
                                        value: true,
                                        activeColor: Color.fromRGBO(0,0,139,1),
                                        onChanged: (bool newValue){
                                          setState(() {

                                          });
                                        },
                                      ),
                                    )
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
                                    child: Text('In stock available',style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromRGBO(0,0,139,1),
                                      fontFamily: 'Open Sans'
                                    ),),
                                  )
                                ],
                              )
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                              child: Text('Ksh 2000',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0,139,1),
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15
                                ),
                              ),
                            ),

                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
                                child: Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
                                        child: Container(
                                          width: 1,
                                          height: 1,
                                          child: Icon(Icons.circle,color: Colors.blue,size: 10,)
                                        )
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
                                      child: Container(
                                          width: 1,
                                          height: 1,
                                          child: Icon(Icons.circle,color: Colors.blue,size: 10,)
                                      )
                                    )
                                  ],
                                )
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: FlatButton.icon(onPressed: (){},
                              icon: Icon(Icons.shopping_cart,color: Colors.white,size: 30,),
                              label: Text('ADD TO CART',style: TextStyle(
                                color: Colors.white,fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                                fontSize: 15
                              ),),
                          color: Color.fromRGBO(0,0,139,1),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
                        child: Wrap(
                          children: [
                            Text('The prices of all weighted items are subject to change at the time of '
                                'weighing',style: TextStyle(
                              fontWeight: FontWeight.w400,fontFamily: 'Open Sans',
                              color: Color.fromRGBO(0,0,139,1)
                            ),)
                          ],
                        )
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0,left: 10.0,right: 10.0),
                child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: MediaQuery.of(context).size.width,
                    height: is_expanded ?
                    MediaQuery.of(context).orientation==Orientation.portrait ?
                    MediaQuery.of(context).size.height * 2/7 :
                        MediaQuery.of(context).size.width * 2/7:
                    MediaQuery.of(context).size.height * 1/5
                  ,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(1.0,1.0),
                            blurRadius: 1.0,
                            spreadRadius: 1.0,
                            color: Colors.black12,
                          ),
                        ]
                    ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment:MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 0.0),
                        child: Text(
                          'Product Description',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Open Sans'
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0,left: 0.0,right: 0.0),
                        child: Text(
                          'Name: Onions Per 500GM',
                          style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                            fontSize: 14
                          ),
                        ),
                      ),

                      is_expanded ?
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
                        child: Text(
                          'tags for search purposes only,these do not signify the actual product '
                              'attributes - for clarity on product,please contact our customer support team:'
                              'Fresh,fresh vegetable,vegetable,salad',
                          style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,
                              color: Colors.black54,fontFamily: 'Open Sans'),
                        ),
                      ) : SizedBox(height: 0,),

                      InkWell(
                        onTap: (){
                            setState(() {
                              is_expanded=!is_expanded;
                            });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0,left: 0.0,right: 0.0,top: 20.0),
                          child: Text(
                            is_expanded ? 'Read less' : 'Read more',
                            style: TextStyle(
                                color: Color.fromRGBO(0,0,139,1),
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                decoration: TextDecoration.underline
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).orientation==Orientation.portrait ?
                MediaQuery.of(context).size.height * 2/5 :
                MediaQuery.of(context).size.width * 2/5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(1.0,1.0),
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                        color: Colors.black12,
                      ),
                    ]
                ),
                child: ProductCatalogue(product_header: 'Similar Products',product_detail: '',),
              ),
              Container(width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).orientation==Orientation.portrait ?
                MediaQuery.of(context).size.height * 2/5 :
                MediaQuery.of(context).size.width * 2/5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(1.0,1.0),
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                        color: Colors.black12,
                      ),
                    ]
                ),
                child:ProductCatalogue(product_header: 'Most Sold Items',product_detail: '',),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).orientation==Orientation.portrait ?
                MediaQuery.of(context).size.height * 2/5 :
                MediaQuery.of(context).size.width * 2/5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(1.0,1.0),
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                        color: Colors.black12,
                      ),
                    ]
                ),
                child: ProductCatalogue(product_header: 'Frequently Bought Together',product_detail: '',),
              ),



              Footer()
            ],
          ),
        ),
      ),
      drawer: Drawer(
        elevation: 10,
        child: Container(
          color: Colors.blue,
          width: MediaQuery.of(context).size.width * 1/3,
        ),
      ),
      endDrawer: Drawer(
        elevation: 10,
        child: Container(
          width: MediaQuery.of(context).size.width * 1/3,
          color: Colors.blue,
        ),
      ),
    );
  }
}