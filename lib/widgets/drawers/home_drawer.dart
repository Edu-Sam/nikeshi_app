import 'package:flutter/material.dart';
import 'package:nikeshi/app_utils/app_utils.dart';
import 'package:nikeshi/widgets/stanleywidgets/flatmenu_btn.dart';
import 'package:provider/provider.dart';

class HomeDrawer extends StatefulWidget {
  HomeDrawer({Key key}) : super(key: key);

  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  Duration duration = Duration(milliseconds: 700);

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    TextStyle style = TextStyle(
        color: appState.dark ? Colors.white : Theme.of(context).primaryColor,
        fontWeight: FontWeight.bold);
    Color color = appState.dark ? Colors.white : Colors.grey[500];
    final _sizedWidth = SizedBox(width: 10);
    return Drawer(
      child: AnimatedContainer(
          duration: duration,
          child: Stack(
            children: [
              ListView(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8),
                      child: DrawerHeader(
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Icon(Icons.shop, color: Colors.white)))),
                  ExpansionTile(
                      backgroundColor:
                          appState.dark ? Color(0xFF0b313b) : Colors.grey[100],
                      title: Row(children: [
                        Icon(
                          Icons.food_bank,
                          color: color,
                        ),
                        _sizedWidth,
                        Text(
                          "Fresh food",
                          style: style,
                        )
                      ]),
                      children: [
                        FlatMenuBtn(
                          "Fruits and vegetables", 
                          (){}
                        ),
                        FlatMenuBtn(
                          "Sea foods", 
                          (){}
                        ),
                        FlatMenuBtn(
                          "Meat", 
                          (){}
                        ),
                      
                      ]),
                  
                  ExpansionTile(
                    backgroundColor:
                        appState.dark ? Color(0xFF0b313b) : Colors.grey[100],
                    title: Row(
                      children: [
                        Icon(
                          Icons.icecream,
                          color: appState.dark
                              ? Colors.white
                              : Theme.of(context).primaryColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "Frozen Food",
                            style: style,
                          ),
                        ),
                      ],
                    ),
                    children: [
                      FlatMenuBtn(
                          "Frozen Ready To Cook", 
                          (){}
                        ),
                      FlatMenuBtn(
                          "Frozen Fruits And Vegetables", 
                          (){}
                        ),
                        FlatMenuBtn(
                          "Frozen Meat And Seafood", 
                          (){}
                        ),
                        FlatMenuBtn(
                          "Ice Cream", 
                          (){}
                        ),
                    ],
                  ),

                  ExpansionTile(
                    backgroundColor:
                        appState.dark ? Color(0xFF0b313b) : Colors.grey[100],
                    title: Row(
                      children: [
                        Icon(
                          Icons.icecream,
                          color: appState.dark
                              ? Colors.white
                              : Theme.of(context).primaryColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "Grocery",
                            style: style,
                          ),
                        ),
                      ],
                      
                    ),
                    children: [
                      FlatMenuBtn(
                          "Canned Food", 
                          (){}
                        ),
                        FlatMenuBtn(
                          "Packaged Food", 
                          (){}
                        ),
                        FlatMenuBtn(
                          "Snacks", 
                          (){}
                        ),
                        FlatMenuBtn(
                          "Home Baking", 
                          (){}
                        ),
                        FlatMenuBtn(
                          "Desserts", 
                          (){}
                        ),
                        FlatMenuBtn(
                          "Tea And Coffee", 
                          (){}
                        ),
                    ]
                  ),

                  ExpansionTile(
                    backgroundColor:
                        appState.dark ? Color(0xFF0b313b) : Colors.grey[100],
                    title: Row(
                      children: [
                        Icon(
                          Icons.icecream,
                          color: appState.dark
                              ? Colors.white
                              : Theme.of(context).primaryColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "Beverages",
                            style: style,
                          ),
                        ),
                      ],
                    ),
                    children: [
                      FlatMenuBtn(
                        "Juices", (){}
                      ),
                      FlatMenuBtn(
                        "Powder Drinks", (){}
                      ),
                      FlatMenuBtn(
                        "Soft Drinks",
                        (){}
                      ),
                      FlatMenuBtn(
                        "Syrups",
                        (){}
                      ),
                      FlatMenuBtn(
                        "Water",
                        (){}
                      )
                    ]
                  ),

                  ExpansionTile(
                    backgroundColor:
                        appState.dark ? Color(0xFF0b313b) : Colors.grey[100],
                    title: Row(
                      children: [
                        Icon(
                          Icons.icecream,
                          color: appState.dark
                              ? Colors.white
                              : Theme.of(context).primaryColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "Dairy",
                            style: style,
                          ),
                        ),
                      ],
                      
                    ),

                    children: [
                      FlatMenuBtn(
                        "Breakfast", 
                        (){}
                      ),
                      FlatMenuBtn(
                        "Butter Margarine", 
                        (){}
                      ),
                      FlatMenuBtn(
                        "Cheese and Cream", 
                        (){}
                      ),
                      FlatMenuBtn(
                        "Eggs", 
                        (){}
                      ),
                      FlatMenuBtn(
                        "Milk", 
                        (){}
                      ),
                      FlatMenuBtn(
                        "Yoghurt", 
                        (){}
                      ),
                    ],
                  ),

                   ExpansionTile(
                    backgroundColor:
                        appState.dark ? Color(0xFF0b313b) : Colors.grey[100],
                    title: Row(
                      children: [
                        Icon(
                          Icons.icecream,
                          color: appState.dark
                              ? Colors.white
                              : Theme.of(context).primaryColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "My Nikeshi",
                            style: style,
                          ),
                        ),
                      ],
                      
                    ),

                    children: [
                      FlatMenuBtn(
                        "Share Nikeshi Mini Market", 
                        (){}
                      ),
                      FlatMenuBtn(
                        "Rate us on Play Store", 
                        (){}
                      ),
                      
                    ],
                  ),

                  FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                  //showAboutInfo(context,appState);
                  //showAlertDialog(context);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (_) => CustomersPage(_user)));
                },
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.info,
                        color: appState.dark
                            ? Colors.white
                            : Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "About",
                        style: TextStyle(
                            color: appState.dark
                                ? Colors.white
                                : Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
                ],
              )
            ],
          )),
    );
  }
}
