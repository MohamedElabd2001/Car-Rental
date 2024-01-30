import 'package:car_rental/Widgets/car_card.dart';
import 'package:car_rental/Widgets/select_option.dart';
import 'package:car_rental/model/cars.dart';
import 'package:car_rental/style/color.dart';
import 'package:car_rental/style/search_bar.dart';
import 'package:car_rental/style/text_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                padding: EdgeInsets.symmetric(vertical: 18),
                child: Text(
                  "Rent your Car Now",
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                ),
              ),
             /* Text(
                "Choose the Car Model",
                style: AppTextStyle.maintitleStyle,
              ),
              optionSelect(),
              SizedBox(height: 12,),
              search_bar(),
              SizedBox(height: 20,),
              Text("Latest Model",style: AppTextStyle.maintitleStyle,),*/
              SizedBox(height: 20,),
              Column(
                children: cars_list.map((e) => car_card(e, context)).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}


List <CarsModel> cars_list = [
  CarsModel(
    id: 0,
    car_img_path: "assets/logos/1.jpg",
    cars_model: "Name",
    carColor: CarColor(carsColor: Colors.blue,colorName: "Blue"),
    price: "1200 \$/Day",
    speed: 200,
    horse_power: 364,
    type: "automatic",
  ),
  CarsModel(
    id: 1,
    car_img_path: "assets/logos/2.jpg",
    cars_model: "Name",
    carColor: CarColor(carsColor: Colors.blue,colorName: "Blue"),
    price: "1300 \$/Day",
    speed: 100,
    horse_power: 300,
    type: "manual",
  ),
  CarsModel(
    id: 2,
    car_img_path: "assets/logos/3.jpg",
    cars_model: "ayhag",
    carColor: CarColor(carsColor: Colors.blue,colorName: "Blue"),
    price: "100 \$/Day",
    speed: 100,
    horse_power: 100,
    type: "automatic",
  ),
  CarsModel(
    id: 3,
    car_img_path: "assets/logos/4.jpg",
    cars_model: "Name",
    carColor: CarColor(carsColor: Colors.blue,colorName: "Blue"),
    price: "1200 \$/Day",
  ),
  CarsModel(
    id: 4,
    car_img_path: "assets/logos/1.jpg",
    cars_model: "Name",
    carColor: CarColor(carsColor: Colors.blue,colorName: "Blue"),
    price: "1200 \$/Day",
  ),
];
