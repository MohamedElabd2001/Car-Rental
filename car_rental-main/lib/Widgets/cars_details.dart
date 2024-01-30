import 'package:flutter/material.dart';

Widget carsDetails(IconData icon, String text) {
  return Container(
    width: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.blueGrey[100],
    ),
    padding: EdgeInsets.symmetric(vertical: 12),
    child: Column(
      children: [
        Icon(
          icon,
          size: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
