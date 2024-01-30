import 'package:flutter/material.dart';

import '../model/cars.dart';

class RentConfirmed extends StatefulWidget {
  final List<DateTime?> selectedDate;
  final CarsModel model;
  const RentConfirmed({super.key, required this.selectedDate, required this.model});


  @override
  State<RentConfirmed> createState() => _RentConfirmedState();
}

class _RentConfirmedState extends State<RentConfirmed> {
  @override
  Widget build(BuildContext context) {

    List<DateTime?> selectedDate = widget.selectedDate;

    // Format the selected dates to display only the date without the time
    String formattedStartDate = selectedDate.isNotEmpty
        ? _formatDate(selectedDate[0] ?? DateTime.now())
        : 'null';

    String formattedEndDate = selectedDate.length > 1
        ? _formatDate(selectedDate[1] ?? DateTime.now())
        : 'null';
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Column(
                 children: [
                   Text('Start Date: $formattedStartDate'),
                   Text('End Date: $formattedEndDate'),
                   Text('Price: ${widget.model.price}'),
                   Text('Model: ${widget.model.cars_model}'),
                   Text('Price: ${widget.model.horse_power}'),
                   Text('Price: ${widget.model.speed}'),
                   Text('Price: ${widget.model.type}'),
                   Text('Price: ${widget.model.car_img_path}'),
                 ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black38,
                  size: 28,
                )),
          ),
        ],
      ),
    );
  }
  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
