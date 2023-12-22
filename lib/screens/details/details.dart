import 'package:flutter/material.dart';
import 'package:training2/Models/fruit_model.dart';
import 'package:training2/screens/Home/home_screen.dart';
class Details_Screen extends StatelessWidget {
  FruitModel?details;
   Details_Screen({super.key,required this.details});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Scaffold(
       body: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(
               height: height*0.7,
               width: width,
               child: Stack(
                 children: [
                   Positioned(
                     right: 0,
                     child: Container(
                       decoration: BoxDecoration(
                       color:details!.color,
                         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
                       ),
                       width: width*0.6,
                       height: height*0.7,
                     ),
                   ),
                   Positioned(
                     child: SizedBox(
                       height: 70,
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                         children: [
                         GestureDetector(
                           onTap: (){
                             Navigator.pop(context);
                           },
                             child: Icon(
                                 Icons.arrow_back,
                             ),

                         ),
                           Spacer(),
                           Icon(Icons.favorite_border),
                           SizedBox(width: 10,)
                   ],
                   ),
                       ),
                     ),
                   ),
                   Image.asset('${details!.image}',height: height*0.6,)
                 ],
               ),
             ),
             SizedBox(height: height*0.03,),
             Padding(
               padding: const EdgeInsets.all(15.0),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('${details!.name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                       Row(
                         children: [
                           Icon(Icons.star,color: Colors.yellow,),
                           Text('4.5'),
                         ],
                       ),
                     ],
                   ),
                   Spacer(),
                   Text('Rs.60/kg',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: SizedBox(
                 width: width*0.6,
                   child: Text('${details!.description}',style: TextStyle(color: Colors.grey),),
               ),
             ),
           ],
         ),
       ),
    );
  }
}
