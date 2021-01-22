
import 'package:flutter/material.dart';

class ProductCatalogue extends StatelessWidget{
  String product_header;
  ProductCatalogue({Key key,@required this.product_header}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0,left: 10.0,right: 10.0),
      child: Container(
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
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                      child: Text(
                        product_header,style: TextStyle(fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black54
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 0.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).orientation==Orientation.portrait ?
                  MediaQuery.of(context).size.height * 2/7 :
                  MediaQuery.of(context).size.width * 2/7,
                  //    color: Colors.red,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context,index){
                      return Container(
                        //             color: Colors.red,
                        width: MediaQuery.of(context).size.width * 1/2,
                        height: MediaQuery.of(context).orientation==Orientation.portrait ?
                        MediaQuery.of(context).size.height *1/4 :
                        MediaQuery.of(context).size.width * 1/4,
                        //     color: Colors.black,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 0.0),
                              child: Container(
                                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                width: 100,
                                height: 100,
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
                                  width:MediaQuery.of(context).size.width * 2/7,
                                  height: MediaQuery.of(context).orientation==Orientation.portrait ?
                                  MediaQuery.of(context).size.height * 1/8 :
                                  MediaQuery.of(context).size.width * 1/8,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 0.0),
                                        child: Wrap(
                                          children: [
                                            Text('Cardbury Perk 5.9 GM X24',style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54,
                                                fontSize: 11
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
                                            width: 150,
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
                                )
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}