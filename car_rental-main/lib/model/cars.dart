import 'package:flutter/material.dart';

class CarsModel{
  int? id;
  String cars_model;
  String price;
  CarColor? carColor;
  String car_img_path;
  int? speed;
  int? horse_power;
  String? type;

  CarsModel({
    this.id,
    this.cars_model="",
    this.price = "",
    this.car_img_path ="",
    this.carColor,
    this.speed,
    this.horse_power,
    this.type = ""
});
}

class CarColor{
  String colorName = "";
  Color carsColor = Colors.white;

  CarColor({this.carsColor=Colors.white,this.colorName="White"});
}