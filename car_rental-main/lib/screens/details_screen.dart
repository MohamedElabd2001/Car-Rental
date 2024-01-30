import 'package:car_rental/Widgets/cars_details.dart';
import 'package:car_rental/style/color.dart';
import 'package:car_rental/style/text_style.dart';
import 'package:flutter/material.dart';

import '../model/cars.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.model});

  final CarsModel model;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: "Model${widget.model.id}",
                child: Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                    image: DecorationImage(
                      image: AssetImage(widget.model.car_img_path),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            widget.model.cars_model,
                            style: AppTextStyle.detailsTextStyle,
                            softWrap: true,
                          ),
                        ),
                        Text(
                          widget.model.price,
                          style: AppTextStyle.priceTextStyle,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Car Details",
                      style: AppTextStyle.maintitleStyle,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        carsDetails(
                          Icons.speed,
                          "${widget.model.speed}",
                        ),
                        carsDetails(
                          Icons.access_time,
                          "3.2s",
                        ),
                        carsDetails(
                          Icons.power_sharp,
                          "${widget.model.horse_power}",
                        ),
                        carsDetails(
                          Icons.settings,
                          "${widget.model.type}",
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              Flexible(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.all(16),
                    width: double.infinity,
                    height: 60,
                    child: RawMaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Rent Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      fillColor: AppColor.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 18),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 28,
                )),
          ),
        ],
      ),
    );
  }
}
