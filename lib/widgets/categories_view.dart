import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget{
  CategoriesView({Key key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1/2,
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(0),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                      child: Text('WEB & \n EXCLUSIVE \n DEALS',style: TextStyle(fontWeight: FontWeight.w900,
                          fontSize: 18,color: Colors.black87,fontFamily: 'Open Sans'),),
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child:Padding(
                          padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/fruits.png')
                                )
                            ),
                          ),
                        )
                    )
                  ],
                ),
              ),
              color: Colors.orangeAccent.withOpacity(0.2),

            ),

            Container(
              padding: const EdgeInsets.all(0),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                      child: Text('FRUITS & \n VEGETABLES',style: TextStyle(fontWeight: FontWeight.w900,
                          fontSize: 18,color: Colors.black87,fontFamily: 'Open Sans'),),
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child:Padding(
                          padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/fruits.png')
                                )
                            ),
                          ),
                        )
                    )
                  ],
                ),
              ),
              color: Colors.yellow.withOpacity(0.2),

            ),

            Container(
              padding: const EdgeInsets.all(0),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                      child: Text('MEAT & \n SEA FOODS',style: TextStyle(fontWeight: FontWeight.w900,
                          fontSize: 18,color: Colors.black87,fontFamily: 'Open Sans'),),
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child:Padding(
                          padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/fruits.png')
                                )
                            ),
                          ),
                        )
                    )
                  ],
                ),
              ),
              color: Colors.deepOrangeAccent.shade100,

            ),

            Container(
              padding: const EdgeInsets.all(0),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                      child: Text('OIL & GHEE',style: TextStyle(fontWeight: FontWeight.w900,
                          fontSize: 18,color: Colors.black87,fontFamily: 'Open Sans'),),
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child:Padding(
                          padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/fruits.png')
                                )
                            ),
                          ),
                        )
                    )
                  ],
                ),
              ),
              color: Colors.greenAccent.shade100,

            ),
          ],
        ),
      ),
    );
  }
}