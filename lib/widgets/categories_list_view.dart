import 'package:flutter/material.dart';
import 'package:nikeshi/widgets/sale_chevron.dart';

class CategoriesListView extends StatefulWidget{
  CategoriesListView({Key key}):super(key: key);

  @override
  CategoriesListState createState()=> CategoriesListState();
}

class CategoriesListState extends State<CategoriesListView>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).orientation==Orientation.portrait ?
        MediaQuery.of(context).size.height *3/4:
        MediaQuery.of(context).size.width ,
        //    color: Colors.red,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index){
            return
              Container(
                //             color: Colors.red,
                width: MediaQuery.of(context).size.width * 1/2,
                height: MediaQuery.of(context).orientation==Orientation.portrait ?
                MediaQuery.of(context).size.height *1/2 :
                MediaQuery.of(context).size.width * 1/2,
                //    color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 0.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child:  Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 0.0),
                                child: Container(
                                  margin: EdgeInsets.only(right: 0, left: 8, top: 8, bottom: 8),
                                  width: MediaQuery.of(context).size.width *7/10,
                                  height: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.blue.shade200,
                                      image: DecorationImage(
                                          image: AssetImage("images/bag_1.png"))),
                                ),),
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
                        padding: EdgeInsets.only(left: 30.0),
                        child: Container(
                          width:MediaQuery.of(context).size.width,
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
                                    width: MediaQuery.of(context).size.width,
                                    height: 50,
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
}