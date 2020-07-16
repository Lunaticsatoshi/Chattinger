  
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget myAppBar(String name){
  return AppBar(
    title: Text(
      name,
      style: TextStyle(
        fontFamily: 'Pacifico',
        fontSize: 35.0,
        color: Colors.white,
      ),
    ),
    centerTitle: true,
    backgroundColor: Color(0xFFFF0000),
    elevation: 0.0,
  );
}