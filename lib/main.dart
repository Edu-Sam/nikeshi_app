import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:nikeshi/pages/home_page_carousel.dart';
import 'app_utils/app_utils.dart';
import 'package:nikeshi/models/models.dart';
import 'package:nikeshi/services/brands_repository.dart';
import 'package:nikeshi/pages/categories_expanded_view.dart';
import 'pages/pages.dart';
import 'package:nikeshi/widgets/sub_categories.dart';
import 'package:nikeshi/widgets/product_catalogue.dart';
import 'package:nikeshi/pages/cart_details.dart';
import 'package:nikeshi/widgets/footer.dart';
import 'package:nikeshi/widgets/categories_view.dart';
import 'package:nikeshi/widgets/drawers/home_drawer.dart';
import 'package:nikeshi/widgets/custom_carousels.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider.value(value: AppState(),)
    ],
    child: MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Nikeshi Mini Market',
        theme: ThemeData(
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<Brand>> future_brands;
  BrandsRepository brandsRepository=new BrandsRepository();
  @override
  void initState() {

    super.initState();
    future_brands=brandsRepository.getBrands();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return FutureBuilder(
      future: future_brands,
      builder: (context,snapshot){
        if(snapshot.hasData){
          List<Brand> userBrands=snapshot.data;
          return homePageCarousel1(userBrands);
        }
        else if(snapshot.hasError){
          return Container();
        }

        else{
          return Container();
        }
      },
    );

  }

  Widget homePageCarousel1(List<Brand> userBrands){
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

      drawer: HomeDrawer(brands: userBrands,),
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
              MediaQuery.of(context).size.height * 6/11 :
              MediaQuery.of(context).size.width * 6/11,
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
              MediaQuery.of(context).size.height * 6/11 :
              MediaQuery.of(context).size.width * 6/11,
              child: ProductCatalogue(product_header:'Metro Post',product_detail: 'View all',),
            ),

            CategoriesView(),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).orientation==Orientation.portrait ?
              MediaQuery.of(context).size.height * 6/11 :
              MediaQuery.of(context).size.width * 6/11,
              child: ProductCatalogue(product_header:'Fruits and Vegetables',product_detail:'View all'),
            ),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).orientation==Orientation.portrait ?
              MediaQuery.of(context).size.height * 6/11 :
              MediaQuery.of(context).size.width * 6/11,
              child: ProductCatalogue(product_header:'Skin Care',product_detail:'view all'),
            ),


            Container(
                width: 600,
                //   height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                //       color: Colors.grey,

                child: Footer()
            ),


          ],),



        ),
      ),

    );
  }

  Future<List<Categories>> fetchBrandsAndCategories() async{

  }
}

