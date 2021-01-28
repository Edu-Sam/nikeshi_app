import"package:flutter/material.dart";
//import 'package:groceries_app/fruits.dart';
import 'package:nikeshi/widgets/footer.dart';
import 'package:nikeshi/widgets/product_catalogue.dart';
import 'package:nikeshi/models/models.dart';
import 'package:nikeshi/services/subcategory_repository.dart';

class Subcategories extends StatefulWidget{
  int category_id;
  Subcategories({Key key,@required this.category_id}) :super(key: key);
  _SubcategoriesState createState() => _SubcategoriesState(this.category_id);


}

class _SubcategoriesState extends State<Subcategories> {
  int category_id;
  SubCategoriesRepository subCategoriesRepository=new SubCategoriesRepository();
  Future<List<SubCategories>> future_subcategories;
   _SubcategoriesState(this.category_id);


   @override
   void initState() {
     future_subcategories=this.getSubCategoriesById(category_id);
    super.initState();
  }
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
                                child: FutureBuilder(
                                  future: future_subcategories,
                                  builder: (context,snapshot){
                                    if(snapshot.connectionState==ConnectionState.done && snapshot.hasData){
                                       List<SubCategories> userSubCategories=snapshot.data;
                                      return ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 5,
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
                                                              image: AssetImage("assets/images/fruits.png"))),
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
                                                              child: Text("Category",style: TextStyle(
                                                                  color: Colors.white),),
                                                            ),
                                                          )
                                                      ),
                                                    ),
                                                  ),


                                                ),


                                              ],
                                            );




                                          }
                                      );
                                    }
                                    else if(snapshot.hasError){
                                      return Container();
                                    }
                                    else if(snapshot.connectionState==ConnectionState.waiting){
                                      return Container();
                                    }
                                    else{
                                      return Container();
                                    }
                                  },
                                )
                              )
                          )


                      )
                    ],
                  ),



                ),
              ),
              ProductCatalogue(product_header: "title",product_detail:"",category_search: '',),
              ProductCatalogue(product_header: "title",product_detail: "",category_search: '',),
              ProductCatalogue(product_header: "title",product_detail: "",category_search: '',),
              Footer(),
            ],

          ),
        ),
      ),
    );


  }

  Future<List<SubCategories>> getSubCategoriesById(int category_id) async{
    // Future<List<Categories>> user_categories=categoriesRepository.getCategories();
    List<SubCategories> user_subcategories= await subCategoriesRepository.getSubCategoriesById(category_id);
    return user_subcategories;
  }

}
