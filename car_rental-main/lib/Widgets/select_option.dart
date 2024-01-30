import 'package:car_rental/style/text_style.dart';
import 'package:flutter/material.dart';

Widget optionSelect() {
  return Container(
    height: 112,
    padding: EdgeInsets.symmetric(vertical: 16),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: logos_path.length + 1,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 88,
            child: Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: index == 0
                      ? Center(
                          child: Text(
                            "All...",
                            style: AppTextStyle.maintitleStyle,
                          ),
                        )
                      : Image.asset(
                          logos_path[index - 1],
                          fit: BoxFit.contain,
                        ),
                ),
              ),
            ),
          );
        }),
  );
}

List<String> logos_path = [
  "assets/logos/1.jpg",
  "assets/logos/2.jpg",
  "assets/logos/3.jpg",
  "assets/logos/4.jpg",

// put the logo images in here
];
