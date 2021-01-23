import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nikesha_ui_app/widgets/custom_carousels.dart';
import'package:carousel_slider/carousel_slider.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:nikesha_ui_app/widgets/product_catalogue.dart';
import 'package:nikesha_ui_app/pages/cart_details.dart';
import 'package:nikesha_ui_app/widgets/footer.dart';
import 'package:nikesha_ui_app/widgets/categories_view.dart';
class  HomePageCarousel extends StatefulWidget {
  HomePageCarousel({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomePageState createState() => HomePageState();

}

class HomePageState extends State<HomePageCarousel> with SingleTickerProviderStateMixin{
  TabController tabController;
  int _currentIndex=0;


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
            CustomCarousels(),
            Padding(padding: const EdgeInsets.only(left: 20.0, right: 20.0),),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).orientation==Orientation.portrait ?
              MediaQuery.of(context).size.height * 2/5 :
              MediaQuery.of(context).size.width * 2/5,
              child: ProductCatalogue(product_header:'metro post',product_detail: '',),
            ),
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
            CategoriesView(),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).orientation==Orientation.portrait ?
              MediaQuery.of(context).size.height * 2/5 :
              MediaQuery.of(context).size.width * 2/5,
              child: ProductCatalogue(product_header:'Metro Post',product_detail: 'View all',),
            ),

           CategoriesView(),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).orientation==Orientation.portrait ?
              MediaQuery.of(context).size.height * 2/5 :
              MediaQuery.of(context).size.width * 2/5,
              child: ProductCatalogue(product_header:'Fruits and Vegetables',product_detail:'View all'),
            ),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).orientation==Orientation.portrait ?
              MediaQuery.of(context).size.height * 2/5 :
              MediaQuery.of(context).size.width * 2/5,
              child: ProductCatalogue(product_header:'Skin Care',product_detail:'view all'),
            ),


            Container(
              width: 600,
           //   height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
       //       color: Colors.grey,

              child: Footer()
              /* child: ,*/
            ),


          ],),



        ),
      ),

    );
  }
}
