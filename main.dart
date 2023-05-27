

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:Container( decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('background.jpg'),
            fit: BoxFit.cover
        ),),
        child: Scaffold(
    backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text("hi",
            style: TextStyle(
              color: Colors.black
            ),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [

              Expanded(child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (BuildContext ctx, int idx) {
                    return Container(child:
                      Text('hi and ${idx}', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                      width: 350, height: 65,
                      padding: EdgeInsets.all(25),
                      margin: EdgeInsets.fromLTRB(10,5,10,5),
                      decoration: BoxDecoration(
                        color: Color(0x80FDFDFE),
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)
                      ),

                    );
                  }
              )),
            ],
          ),
       ),
      ),
    );
  }
}