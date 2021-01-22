import 'package:flutter/material.dart';

class SaleChevron extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomPaint(
      painter: SaleChevronWidget(),
      child: Container(

      ),
    );
  }

}

class SaleChevronWidget extends CustomPainter{
  @override
  void paint(Canvas canvas,Size size){
       final Gradient gradient=new LinearGradient(
         begin: Alignment.topCenter,
         end: Alignment.bottomCenter,
         colors: [Colors.orange,Colors.orange,],
         tileMode: TileMode.clamp
       );


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}