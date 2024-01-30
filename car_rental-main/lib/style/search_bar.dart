import 'package:car_rental/style/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget search_bar(){
  return TextField(
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.black12,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(30),
      ),
      hintText: "Search for Car Model",
      prefixIcon: Icon(Icons.search,color: AppColor.primaryColor,),
      contentPadding: EdgeInsets.all(0),
    ),
    style: TextStyle(color: Colors.black87),
  );
}