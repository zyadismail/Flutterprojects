import 'package:flutter/material.dart';
import 'package:training2/Data/data.dart';
import 'package:training2/Models/fruit_model.dart';
import 'package:training2/screens/details/details.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Color(0xffFFF9F1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Icon(Icons.menu,color: Colors.black,size: 30,),
          SizedBox(width: width*0.03,)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello',style: TextStyle(fontSize: 30,)),
              Text('Tanveer',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold ),),
              SizedBox(height: height*0.04,),
              Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: TextFormField(

                      decoration: InputDecoration(
                        hintText:'Search',
                        suffixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: width*0.04,),
                  Container(
                    height: height*0.05,
                    width: width*0.1,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.mic),
                  )
                ],
              ),
              SizedBox(height: height*0.02,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height*0.07,
                  width: width,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: width*0.02,),
                    scrollDirection: Axis.horizontal,
                    itemCount: fruits.length,
                      itemBuilder: (context,index){
                         return Container(
                           height: height*0.1,
                           width: width*0.3,
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                             color: fruits[index].color,
                           ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Image.asset(fruits[index].image,width: 40),
                               SizedBox(width: width*0.02,),
                               Text('${fruits[index].name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                             ],
                           ),
                         );
                  },
                  ),
                ),
              ),
              SizedBox(height: height*0.03),
               SizedBox(
                 height: height*0.6,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: fruits.length,
                     itemBuilder: (context,index){
                     return  GestureDetector(
                       onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>Details_Screen(details:fruits[index],)));
                       },
                       child: SizedBox(
                         height: height*0.6,
                         width: width*0.6,
                         child: Stack(
                           children: [
                             Positioned(
                               right:0,
                               child: Container(
                                 height:height *0.52,
                                 width: width*0.5,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: fruits[index].color,
                                 ),
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Padding(
                                     padding: const EdgeInsets.all(1.0),
                                     child: Column(
                                       children: [
                                         Row(
                                           children: [
                                             Text('${fruits[index].name}',style: TextStyle(color: Colors.white),),
                                             Spacer(),
                                             Icon(Icons.favorite_border,color: Colors.white,),
                                           ],
                                         ),
                                         SizedBox(height: height*0.3,),

                                         Text('${fruits[index].description}',style: TextStyle(color: Colors.white),),
                                         SizedBox(height: height*0.02,),
                                         Row(
                                           children: [
                                             Text('${fruits[index].price}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                                           ],
                                         ),
                                         MaterialButton(
                                           minWidth: 200,
                                           color: Colors.white,
                                           onPressed: (){},
                                         child:Text('Add To Cart',style: TextStyle(color:fruits[index].color, ),),
                                         )
                                       ],
                                     ),
                                   ),
                                 ),
                               ),
                             ),
                             Positioned(
                               left: 0,
                               child: Image.asset(
                                   width:width*0.5,
                                   height: height*0.4,
                                   '${fruits[index].image}'),
                             ),
                           ],
                         ),
                       ),
                     );
                 }),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
