import"package:flutter/material.dart";
//import 'package:groceries_app/fruits.dart';
import 'package:nikeshi/widgets/footer.dart';
import 'package:nikeshi/widgets/product_catalogue.dart';

class Subcategories extends StatefulWidget{

  Subcategories({Key key}) :super(key: key);
  _SubcategoriesState createState() => _SubcategoriesState();


}

class _SubcategoriesState extends State<Subcategories> {


  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0),
                child:  Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),

                  decoration:  BoxDecoration(
                    color: Colors.white,
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 0.0, right: 0.0, top: 10.0),

                          child: Container(
                              height: 120,
                              width: MediaQuery.of(context).size.width,

                              color: Colors.grey,
                              child: GestureDetector(
                                onTap: (){
                              //    Navigator.push(context,MaterialPageRoute(builder: (context)=>Product_catalogue1()));

                                },
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 4 ,
                                    itemBuilder: (context,index){
                                      return Column(
                                        mainAxisAlignment: MainAxisAlignment.end,

                                        children: [

                                          Container(
                                            height: 100,
                                            width: 150,
                                            color:Colors.transparent,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                                              child: Container(
                                                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                                width: 30,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                    /*boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey.withOpacity(0.9),
                                                        spreadRadius: 10,
                                                        blurRadius: 5,
                                                        offset: Offset(0, 6), // changes position of shadow
                                                      ),
                                                      //hello
                                                    ],*/
                                                  //  borderRadius: BorderRadius.all(Radius.circular(14)),
                                                    color: Colors.grey.shade300,
                                                    image: DecorationImage(
                                                        image: AssetImage("assets/images/fruits.png"))
                                                  /*       borderRadius: BorderRadius.all(Radius.circular(14)),
                                         color: Colors.blueAccent,
                                         image: DecorationImage(
                                             image: AssetImage("assets/images/hey.png"))*/),
                                                child: Center(
                                                    child:    Container(
                                                      width: 100,
                                                      height: 50,
                                                      margin: const EdgeInsets.all(15.0),
                                                      padding: const EdgeInsets.all(3.0),
                                                      decoration: BoxDecoration(
                                                          color: Colors.black.withOpacity(0.3),
                                             //             border: Border.all(color: Colors.grey)
                                                      ),
                                                      child: Center(
                                                        child: Text("Categories",style: TextStyle(
                                                            color: Colors.white                                                      ),),
                                                      ),
                                                      )
                                                ),
                                              ),
                                            ),


                                          ),


                                        ],
                                      );




                                    }
                                ),
                              )
                          )


                      )
                    ],
                  ),



                ),
              ),
              ProductCatalogue(product_header: "title",product_detail:""),
              ProductCatalogue(product_header: "title",product_detail: ""),
              ProductCatalogue(product_header: "title",product_detail: ""),
              Footer(),
            ],

          ),
        ),
      ),
    );


  }

}
