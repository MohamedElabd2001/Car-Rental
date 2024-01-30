import 'package:car_rental/model/cars.dart';
import 'package:car_rental/screens/details_screen.dart';
import 'package:car_rental/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget car_card(CarsModel model, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreen(model: model,),
        ),
      );
    },
    child: Container(
      margin: EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: "model${model.id}",
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
                image: DecorationImage(
                  image: AssetImage(model.car_img_path),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24),
                      ),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.cars_model,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          model.price,
                          style: AppTextStyle.priceTextStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
