import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AnimatedContainerScreen extends StatefulWidget {
  @override
  _AnimatedContainerScreenState createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('AnimatedContainer')),
        body: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Center(
            child: AnimatedContainer(
              width: selected ? 40.0 : 8.0,
              height: selected ? 8.0 : 8.0,
              alignment:
                  selected ? Alignment.center : AlignmentDirectional.topCenter,
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                color: selected ? Color(0XFF4387ED) : Color(0XFFC9D7E8),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
      ),
    );
  }
}