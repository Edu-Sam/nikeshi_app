import 'package:flutter/material.dart';
import 'package:nikeshi/widgets/cart_component.dart';

class CheckoutPage extends StatefulWidget {
  CheckoutPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  CheckoutPageState createState() => CheckoutPageState();
}

class CheckoutPageState extends State<CheckoutPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title:Text('Checkout',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color.fromRGBO(0,0,139,1)),),
      // centerTitle: true,
      actions: [
        IconButton(
          onPressed: (){},
          icon:Icon(Icons.search,color: Color.fromRGBO(0,0,139,1),size: 30,),
        ),
        /* IconButton(
            onPressed: (){},
            icon:Icon(Icons.shopping_cart,color: Color.fromRGBO(0,0,139,1),size:30)
          ),*/
        CartComponent(),
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
      body:Column(
        children: [
          SingleChildScrollView(
            child:  Column(
              children: [
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context,index){

                      return Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*1/4,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12)
                          ),

                          child: Column(

                            children: [
                              Padding(
                                padding:const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),

                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 30,
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  color: Colors.grey,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                    children: [
                                      Text("Product Name "),
                                      Text("Quantity"),
                                      Text("Amount")

                                    ],

                                  ),),

                              ),

                              Padding(
                                padding:const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("beef "),
                                        Text("49"),
                                        Text("1100")
                                      ],

                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Mutton "),
                                        Text("50"),
                                        Text("1200")
                                      ],

                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Chicken"),
                                        Text("20"),
                                        Text("600")
                                      ],

                                    ),
                                    Divider(),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Total:"),
                                        Text(""),
                                        Text(" 2900")
                                      ],

                                    )
                                  ],
                                ),

                              )
                            ],
                          )
                      );
                    }
                )



              ],




            ),

          ),
          Container(
            width: double.infinity,
            height: 30,
            child:     RaisedButton(

              onPressed: (){},
              child: Text('PLACE   ORDER',style: TextStyle(
                  color: Colors.white,fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w600,
                  fontSize: 10
              ),),
              color: Color.fromRGBO(0,0,139,1),

            ),
          ),
        ],
      ),
      /* SingleChildScrollView(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 2,
            itemBuilder: (context,index){
          return   Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Product Name "),
                      Text("Quantity"),
                      Text("Amount")
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    color: Colors.grey,
                    child:Center(
                      child: Text("Grocery Cart Details"),
                    )
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                color: Colors.white,
              ),
            ],
          );
            }
*//*
*//*
        )
      ),*/
//// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}