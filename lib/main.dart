import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bmicalculator(),

    );
  }
}

class Bmicalculator extends StatefulWidget {
  const Bmicalculator({super.key});

  @override
  State<Bmicalculator> createState() => _BmicalculatorState();
}

class _BmicalculatorState extends State<Bmicalculator> {
bool male = true;
int height = 100;
int weight  = 50;
int age = 20;
late String result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 20, 57),
      appBar: AppBar(
        title: Text('Bmicalculator'),
        centerTitle: true,
        backgroundColor: Colors.indigo[500],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container(
            child: Row(
              children: [
                Expanded(child: InkWell(
                  onTap: (){
                    male = true;
                    setState(() {});
                  },
                  child: Container(
                   decoration: BoxDecoration(
                     color: male? Colors.blue : Colors.grey,
                     borderRadius: BorderRadius.circular(10),
                   ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.male,
                        size: 100,
                          color: Colors.white,
                        ),
                        Text('male',
                        style: TextStyle(color: Colors.white , fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                )),
                SizedBox(width: 10),
                Expanded(child: InkWell(
                  onTap: (){
                    male = false;
                    setState(() {});
                    },
                  child: Container(
                    decoration: BoxDecoration(
                      color: male? Colors.grey : Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.female,
                          size: 100,
                          color: Colors.white,
                        ),
                        Text('female',
                          style: TextStyle(color: Colors.white , fontSize: 20),
                        ),
                      ],
                    ),
                  ),

                )),
              ],
            ),
            )),


            Expanded(child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('height', style: TextStyle(color: Colors.white, fontSize: 35,fontWeight: FontWeight.bold),),
                  Text(height.toString(),style: TextStyle(color: Colors.white, fontSize: 35,fontWeight: FontWeight.bold),),
                  Slider(value: height.toDouble(), onChanged: (value){
                    setState(() {
                      height = value.round();
                    });
                  },
                  min: 20,
                  max: 230,
                  ),
                ],
              ),
              decoration: BoxDecoration(
              color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(vertical: 10),
              )),



            Expanded(child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Wieght',style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text(weight.toString(),style: TextStyle(color: Colors.white, fontSize: 30),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                    weight--;
                                    });
                                  }, icon: Icon(Icons.remove)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                    weight++;
                                    });
                                  }, icon: Icon(Icons.add)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 10),
                  )),
                  SizedBox(
                    width: 10,
                  ),

                  Expanded(child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('age',style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text(age.toString(),style: TextStyle(color: Colors.white, fontSize: 30),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                    age--;
                                    });
                                  }, icon: Icon(Icons.remove)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  }, icon: Icon(Icons.add)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    margin: EdgeInsets.all(10),
                  )),
                ],
              ),
            )),




            MaterialButton(onPressed: (){
              double bmi = weight /pow(height/ 100,2);
              if(bmi.round() <18){
                result = 'Very thin';
              }else if(bmi.round() > 18 && bmi.round() < 25){
                result = 'Normal';
              } else{
                result = 'Very fat';
              }
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Result(male: male, weight: weight, height: height,age: age, result: result, )));
            }
            ,child: Text('calculate'),
            color: Colors.red,
              minWidth: double.infinity,
              height: 50,

            ),
          ],
        ),
      ),

    );
  }
}









class Result extends StatelessWidget {
  final bool male ;
  final int height ;
  final int weight  ;
  final int age;
  final String result;
  const Result({super.key, required this.male, required this.height, required this.weight, required this.age , required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text('Bmi'),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Gender',style: TextStyle(color: Colors.black , fontSize: 30 , fontWeight: FontWeight.bold),),
              SizedBox(
                width: 30,
              ),
              Text(male?"Male" : "Female", style: TextStyle(color: Colors.blue , fontSize: 30 , fontWeight: FontWeight.bold),),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('age',style: TextStyle(color: Colors.black , fontSize: 30 , fontWeight: FontWeight.bold),),
              SizedBox(
                width: 30,
              ),
              Text(age.toString() , style: TextStyle(color: Colors.blue , fontSize: 30 , fontWeight: FontWeight.bold),),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Result',style: TextStyle(color: Colors.black , fontSize: 30 , fontWeight: FontWeight.bold),),
              SizedBox(
                width: 30,
              ),
              Text(result, style: TextStyle(color: Colors.blue , fontSize: 30 , fontWeight: FontWeight.bold),),

            ],
          ),

        ],
      ),),
    );
  }
}