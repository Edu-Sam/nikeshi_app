import 'package:flutter/material.dart';
import 'package:nikeshi/widgets/categories_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:nikeshi/widgets/sale_chevron.dart';
import 'package:nikeshi/widgets/categories_detailed_view.dart';
import 'package:nikeshi/widgets/categories_list_view.dart';
class CategoriesExpandedView extends StatefulWidget {
  CategoriesExpandedView({Key key}) :super(key: key);

  CategoriesExpandedState createState() => CategoriesExpandedState();
}
class  CategoriesExpandedState extends State<CategoriesExpandedView>{
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  int _payment_value=1;
  int populated_view=1;
  //int payment value1=1;
  @override
  Widget build(BuildContext context){
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
            //    Navigator.push(context,MaterialPageRoute(builder: (context)=>CartDetails()));
              },
              icon:Icon(Icons.shopping_cart,size: 30,)),

          Icon(Icons.more_vert,size: 30)
        ],
        iconTheme: IconThemeData(
            color: Color.fromRGBO(0,0,139,1)
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child:Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0,top: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(

                            child:    DropdownButtonHideUnderline(child:
                            DropdownButton(
                              value: _payment_value,
                              iconEnabledColor: Color.fromRGBO(0,0,0,1),
                              items: [
                                DropdownMenuItem(child: Text('All',semanticsLabel: 'hello',
                                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,
                                      color: Color.fromRGBO(0,0,0,1)),),
                                  value: 1,),

                                DropdownMenuItem(child: Text("On Sale",style: TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.w700,color: Colors.black),),value: 3,),
                                DropdownMenuItem(child: Text("In Stock",style: TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.w700,color: Colors.black),),value: 3,),
                              ],
                              onChanged: (value){
                                setState((){
                                  _payment_value=value;
                                });
                              },
                            ))



                        ),),
                      Expanded(
                        flex: 1,
                        child: Container(
                            height: 40.0,
                            child:    DropdownButtonHideUnderline(child:
                            DropdownButton(
                              value: _payment_value,
                              iconEnabledColor: Color.fromRGBO(0,0,0,1),
                              items: [
                                DropdownMenuItem(child: Text('Best Match',semanticsLabel: 'hello',
                                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,
                                      color: Color.fromRGBO(0,0,0,1)),),
                                  value: 1,),

                                DropdownMenuItem(child: Text("Brand A-Z",style: TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.w700,color: Colors.black),),value: 3,),
                                DropdownMenuItem(child: Text("Brand Z-A",style: TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.w700,color: Colors.black),),value: 3,),
                                DropdownMenuItem(child: Text("Price Low to High",style: TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.w700,color: Colors.black),),value: 3,),
                                DropdownMenuItem(child: Text("Price High to low",style: TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.w700,color: Colors.black),),value: 3,),
                                DropdownMenuItem(child: Text("Popularity",style: TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.w700,color: Colors.black),),value: 3,),
                                DropdownMenuItem(child: Text("Mostly Viewed",style: TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.w700,color: Colors.black),),value: 3,),
                              ],
                              onChanged: (value){
                                setState((){
                                  _payment_value=value;
                                });
                              },
                            ))



                        ),
                      ),
                      //Spacer(),
                      Expanded(
                        flex: 1,
                          child:
                          Container(
                              height: 40.0,
                              child:    DropdownButtonHideUnderline(child:
                              DropdownButton(
                                value: _payment_value,
                                icon: Icon(Icons.filter_alt_outlined,color: Colors.black12,size: 20,),
                                iconEnabledColor: Color.fromRGBO(0,0,0,1),
                                items: [
                                  DropdownMenuItem(child: Text('filter',semanticsLabel: 'hello',
                                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,
                                        color: Color.fromRGBO(0,0,0,1)),),
                                    value: 1,),

                                  DropdownMenuItem(child: Text("Filter by price",style: TextStyle(fontSize: 14,
                                      fontWeight: FontWeight.w700,color: Colors.black),),value: 3,),
                                  DropdownMenuItem(child: Text("Filter by brand",style: TextStyle(fontSize: 14,
                                      fontWeight: FontWeight.w700,color: Colors.black),),value: 3,),

                                ],
                                onChanged: (value){
                                  setState((){
                                    _payment_value=value;
                                  });
                                },
                              ))

                          ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0),
                  child: Container(
                    width: 600,
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    color: Colors.grey,

                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Products :"),
                        IconButton(
                          icon:Icon(Icons.menu, color: Colors.black, size: 20,
                          ),  onPressed:(){
                          updateView();
                        },
                        ),

                      ],
                    ),
                  ),
                ),
              populated_view==1?
              createExpandedView() :
              populated_view==2 ?
              CategoriesListView() :
              populated_view==3 ?
              CategoriesDetailedView() : null
              ],
            ),
          ),

        ),
      )
    );
  }

  Widget createExpandedView(){
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 0.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).orientation==Orientation.portrait ?
        MediaQuery.of(context).size.height *3/4:
        MediaQuery.of(context).size.width ,
        //    color: Colors.red,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 5/6,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
          ),
          itemCount: 10,
          itemBuilder: (context,index){
            return
              Container(
                //             color: Colors.red,
                width: MediaQuery.of(context).size.width * 1/2,
                height: MediaQuery.of(context).orientation==Orientation.portrait ?
                MediaQuery.of(context).size.height *1/4 :
                MediaQuery.of(context).size.width * 1/4,
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
                          width:MediaQuery.of(context).size.width * 2/5,
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
                                    width: 400,
                                    height: 40,
                                    // color: Colors.red,
                                    child: FlatButton.icon(
                                      onPressed: (){},
                                      icon: Icon(Icons.shopping_cart,color: Colors.white,size: 16,),
                                      label: Text('ADD TO CART',style: TextStyle(
                                          color: Colors.white,fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12
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
    );
  }

  updateView(){
   if(populated_view<3){
     setState(() {
       populated_view++;
     });
   }
   else{
     setState(() {
       populated_view=1;
     });
   }

  }
}

