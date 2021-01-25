import 'package:flutter/material.dart';
import 'package:nikeshi/widgets/sale_chevron.dart';
import 'package:nikeshi/pages/order_details.dart';
import 'offer_container.dart';
import 'sold_out_container.dart';
class ProductCatalogue extends StatelessWidget{
  String product_header;
  String product_detail;
  ProductCatalogue({Key key,@required this.product_header,@required this.product_detail}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0,left: 10.0,right: 10.0),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                      child: Text(
                        product_header,style: TextStyle(fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black54
                      ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                      child: Text(
                        product_detail,style: TextStyle(fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black54
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
                  MediaQuery.of(context).size.height * 2/5 :
                  MediaQuery.of(context).size.width * 2/5,
                   //   color: Colors.red,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context,index){
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>OrderDetail()));
                        },
                        child: Container(
                          //             color: Colors.red,
                          width: MediaQuery.of(context).size.width * 1/2,
                          height: MediaQuery.of(context).orientation==Orientation.portrait ?
                          MediaQuery.of(context).size.height *2/6 :
                          MediaQuery.of(context).size.width * 2/6,
                          //    color: Colors.black,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 0.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(14)),
                                            color: Colors.blue.shade200,
                                            image: DecorationImage(
                                                image: AssetImage("images/bag_1.png"))),
                                      ),

                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                                          child: Row(
                                            //  mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              SaleChevron(
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                              ),

                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                                  child: Container(
                                    width:MediaQuery.of(context).size.width * 2/7,
                                    height: MediaQuery.of(context).orientation==Orientation.portrait ?
                                    MediaQuery.of(context).size.height * 1/5 :
                                    MediaQuery.of(context).size.width * 1/5,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 0.0),
                                          child: OfferContainer(),
                                        ),
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
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }
}