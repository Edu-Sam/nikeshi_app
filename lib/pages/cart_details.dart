import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:nikeshi/models/models.dart';
import 'package:badges/badges.dart';
import 'package:nikeshi/widgets/product_catalogue.dart';

class CartDetails extends StatefulWidget{
  CartDetails({Key key}):super(key:key);

  @override
  CartDetailState createState()=> CartDetailState();
}

class CartDetailState extends State<CartDetails>{

  @override
  Widget build(BuildContext context) {
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
         /* IconButton(
            onPressed: (){},
            icon:Icon(Icons.shopping_cart,color: Color.fromRGBO(0,0,139,1),size:30)
          ),*/
          cartComponent(),
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(color: Colors.indigoAccent,
               width: MediaQuery.of(context).size.width,
                height: 20,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('All prices are inclusive of taxes,where applicable',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 11),),
                  )
                ),
              ),

              Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height * 3/4,
                child: ListView.builder(
                  itemCount: Provider.of<Cart>(context).cart_size,
                  itemBuilder: (context,index){
                   return createCartItems(Provider.of<Cart>(context).cart_items_data.elementAt(index), index);
                  },
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 4/7,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.black12,
                      width: MediaQuery.of(context).size.width,
                      height: 30,
                      child: Align(
                        alignment: FractionalOffset.center,
                        child: Text('Grocery Cart details',style: TextStyle(fontWeight: FontWeight.w500,
                        fontFamily: 'Open Sans',fontSize: 14,color: Colors.black54),),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1/6,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                                    child: Text('Subtotal',style: TextStyle(color: Colors.black54,
                                        fontWeight: FontWeight.w400,fontSize: 14,fontFamily: 'Open Sans'),),
                                  ),
                                  Padding(padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                                    child: Text('Ksh ' + Provider.of<Cart>(context,listen: false).calculateTotal().toString(),style: TextStyle(color: Colors.black54,
                                        fontWeight: FontWeight.w400,fontSize: 14,fontFamily: 'Open Sans'),),
                                  )
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                                    child: Text('Discount',style: TextStyle(color: Colors.black54,
                                        fontWeight: FontWeight.w400,fontSize: 14,fontFamily: 'Open Sans'),),
                                  ),
                                  Padding(padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                                    child: Text('10%',style: TextStyle(color: Colors.black54,
                                        fontWeight: FontWeight.w400,fontSize: 14,fontFamily: 'Open Sans'),),
                                  )
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                                    child: Text('Packing/delivery fee',style: TextStyle(color: Colors.black54,
                                        fontWeight: FontWeight.w400,fontSize: 14,fontFamily: 'Open Sans'),),
                                  ),
                                  Padding(padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                                    child: Text('Ksh 2000',style: TextStyle(color: Colors.black54,
                                        fontWeight: FontWeight.w400,fontSize: 14,fontFamily: 'Open Sans'),),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 0.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                                    child: Text('Total',style: TextStyle(color: Colors.black87,
                                        fontWeight: FontWeight.w600,fontSize: 14,fontFamily: 'Open Sans'),),
                                  ),
                                  Padding(padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                                    child: Text('Ksh 4000',style: TextStyle(color: Colors.black87,
                                        fontWeight: FontWeight.w600,fontSize: 14,fontFamily: 'Open Sans'),),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1/4,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 5.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                child: FlatButton(
                                  onPressed: (){},
                                  child: Text("Checkout",style: TextStyle(color: Colors.white,fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w600
                                  ),),
                                  color: Color.fromRGBO(0,0,139,1),
                                ),
                              )
                            ),

                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 5.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  child: FlatButton(
                                    onPressed: (){},
                                    child: Text("Save Cart",style: TextStyle(color: Colors.white,fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w600
                                    ),),
                                    color: Color.fromRGBO(0,0,139,1),
                                  ),
                                )
                            ),

                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 5.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  child: FlatButton(
                                    onPressed: (){},
                                    child: Text("Clear Cart",style: TextStyle(color: Colors.white,fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w600
                                    ),),
                                    color: Color.fromRGBO(0,0,139,1),
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),
                    ),

                    /*Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 0.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1/3,
        //                color: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
                              child: Text(
                                'Top Selling Articles',style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Open Sans'
                              ),
                              ),
                            ),
                            Divider(),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 1/4,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (context,index){
                                  return Container(
                       //             color: Colors.red,
                                    width: MediaQuery.of(context).size.width * 1/3,
                                    height: MediaQuery.of(context).size.height *1/5,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 0.0),
                                          child: Container(
                                            margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                            width: 80,
                                            height: 80,
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
                                            width:MediaQuery.of(context).size.width * 1/4,
                                            height: MediaQuery.of(context).size.height * 1/9,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                                                  child: Container(
                                                    width: 60,
                                                    height: 20,
                                                    color: Colors.orange,
                                                    child: Padding(
                                                      padding: EdgeInsets.symmetric(vertical: 4.0,horizontal: 8.0),
                                                      child: Text('Sold Out',style: TextStyle(fontSize: 10,
                                                      fontWeight: FontWeight.w500,fontFamily: 'Open Sans',
                                                      color: Colors.white),),
                                                    ),
                                                  ),
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

                                              ],
                                            ),
                                          )
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    )*/

                  ],
                ),
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).orientation==Orientation.portrait ?
                MediaQuery.of(context).size.height * 6/11 :
                MediaQuery.of(context).size.width * 6/11,
                child: ProductCatalogue(product_header:'Top Selling Items',product_detail: '',category_search: '',),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget createCartItems(CartItemsData data,int index){
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 3/14,

          child: Padding(
            padding: EdgeInsets.only(left: 0.0,right: 0.0,top: 10.0),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                            child: Row(
                              children: [
                                Container(

                                  child: Column(
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.keyboard_arrow_up_sharp,size:30,color: Color.fromRGBO(0,0,139,1),),
                                        onPressed: (){
                                          addQuantity(data);
                                        },
                                      ),

                                      IconButton(
                                        icon: Icon(Icons.delete,size: 30,color: Color.fromRGBO(0,0,139,1),),
                                        onPressed: (){
                                          setState(() {
                                            removeItem(index);
                                          });
                                        },
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.keyboard_arrow_down_sharp,color: Color.fromRGBO(0,0,139,1)),
                                        onPressed: (){
                                          subtractQuantity(data);
                                        },
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                //  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      //              color: Colors.blue.shade200,
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(Provider.of<Cart>(context,listen: false).cart_items_data.elementAt(index).image))),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 1.0,horizontal: 0.0),
                                      child: Text(Provider.of<Cart>(context,listen: false).cart_items_data.elementAt(index).pName,
                                        style:TextStyle(
                                            color: Color.fromRGBO(0,0,139,1),
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14
                                        ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 1.0,horizontal: 0.0),
                                      child: Text('Ksh ' + Provider.of<Cart>(context).cart_items_data.elementAt(index).price,style:TextStyle(
                                          color: Color.fromRGBO(0,0,139,1),
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14
                                      ),),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                      )
                      ,
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                        child: Text("Ksh " + Provider.of<Cart>(context,listen: false).calculateLineTotal(data).toString(),style:TextStyle(
                            color: Color.fromRGBO(0,0,139,1),
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                            fontSize: 14
                        ),),
                      )
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Divider(),
                )
              ],
            ),
          )
      ),
    );
  }

  Widget cartComponent(){
    return Stack(
      children: <Widget>[
        new IconButton(icon: Icon(
          Icons.shopping_cart_outlined,size: 30,
          color: Color.fromRGBO(0,0,139,1),
        ),
          onPressed: () {
            setState(() {
              //     _navigatorKey.currentState.pushReplacementNamed('/cart_nav');
            });
          },),
        Provider.of<Cart>(context,listen: false).cart_size > 0 ?
        new Positioned(
          top: 0.0,
          right: 0.0,
          child: new Stack(
            children: <Widget>[
              new Container(width: 30, height: 30,),
              //   new Icon(Icons.brightness_1,size: 20.0,color: Colors.red,),
              new Positioned(
                  top: 3.0,
                  left: 6.0,
                  child: Badge(
                    position: BadgePosition.topEnd(
                        top: 0, end: 3),
                    badgeColor: Color.fromRGBO(0,0,139,1),
                    animationDuration: Duration(
                        milliseconds: 300),
                    animationType: BadgeAnimationType.slide,
                    badgeContent: Text('' + Provider
                        .of<Cart>(context)
                        .cart_size
                        .toString(),
                      style: TextStyle(color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400),
                    ),
                  )
              )
            ],
          ),
        ): SizedBox(width: 0, height: 0,)


      ],
    );
  }

  void removeItem(int current_index){
    setState(() {
      Provider.of<Cart>(context,listen:false).removeItem(current_index);
      Provider.of<Cart>(context,listen: false).cart_size--;
    });
  }

  void addQuantity(CartItemsData data){
    String temp_quantity=data.quantity;
    int new_quantity=int.parse(temp_quantity);
    new_quantity++;
    setState((){
      data.quantity=new_quantity.toString();
    });
  }

  void subtractQuantity(CartItemsData data){
    String temp_quantity=data.quantity;
    int new_quantity=int.parse(temp_quantity);
    if(new_quantity > 0){
      new_quantity--;
      setState(() {
        data.quantity=new_quantity.toString();
      });
    }
  }

/*
* 86,38,138 -purple
* 113,200,103   -green
* 197,62,46     -brown
* */

}