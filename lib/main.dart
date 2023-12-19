import 'dart:math';
import 'package:flutter/material.dart';

void main(){

runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Basketball(),
    );
  }
}


class Basketball extends StatefulWidget {
  const Basketball({super.key});
  @override
  State<Basketball> createState() => _BasketballState();
}

class _BasketballState extends State<Basketball> {
  int CounterTeamA = 0;
  int CounterTeamB = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),),
        body: Stack(
          children: [
            Container(
              decoration:const BoxDecoration(
                image: DecorationImage(
                    image:NetworkImage(
                      'https://objects.kaxmedia.com/auto/o/181899/e9827663be.jpeg',),
                    fit: BoxFit.cover
                ),
              ),
            ),
            Container(
              decoration:const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black,
                    Colors.black12,
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         const Text('Team A' ,
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Text(
                            CounterTeamA.toString(),
                            style: TextStyle(fontSize: 120 , color: Colors.white),
                          ),
                          MaterialButton(onPressed: (){
                            setState(() {
                              CounterTeamA++;
                            });
                          },
                            child: Text('Add 1 point'),
                            color: Colors.orange,
                            minWidth:100 ,

                          ),
                         const Spacer(),
                          MaterialButton(onPressed: (){
                            setState(() {
                              CounterTeamA += 2;
                            });
                          },
                            child: Text('Add 2 point'),
                            color: Colors.orange,
                            minWidth:100 ,
                          ),
                         const Spacer(),
                          MaterialButton(onPressed: (){
                            setState(() {
                              CounterTeamA += 3;
                            });
                          },
                            child:  Text('Add 3 point'),
                            color: Colors.orange,
                            minWidth:100 ,
                          ),
                          Spacer(flex: 15,)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 350,
                      child: VerticalDivider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Team B' ,
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Text(
                            CounterTeamB.toString(),
                            style: TextStyle(fontSize: 120 , color: Colors.white),
                          ),
                          MaterialButton(onPressed: (){
                            setState(() {
                              CounterTeamB++;
                            });
                          },
                            child: Text('Add 1 point'),
                            color: Colors.orange,
                            minWidth:100 ,

                          ),
                          Spacer(),
                          MaterialButton(onPressed: (){
                            setState(() {
                              CounterTeamB += 2;
                            });
                          },
                            child: Text('Add 2 point'),
                            color: Colors.orange,
                            minWidth:100 ,
                          ),
                          Spacer(),
                          MaterialButton(onPressed: (){
                            setState(() {
                              CounterTeamB += 3;
                            });
                          },
                            child: Text('Add 3 point'),
                            color: Colors.orange,
                            minWidth:100 ,
                          ),
                          Spacer(flex: 15,)
                        ],
                      ),
                    ),],),
                MaterialButton(
                  onPressed: (){
                    setState(() {
                      CounterTeamA = CounterTeamB= 0;
                    });
                  },
                  child: Text('Rest'),
                  color: Colors.orange,
                  minWidth: 150,
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ],
        )

    );
  }
}
