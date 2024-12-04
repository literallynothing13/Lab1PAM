import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab1/BmiController.dart';

class HeightWidget extends StatelessWidget {
  final TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.find<BMIController>();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Height',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(right:150),
            child: TextField(
                controller: heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Height',
                  hintStyle: TextStyle(
                    color:Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.primaryContainer,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {
                  double parsedValue = double.tryParse(value) ?? 0.0;
                  bmiController.height.value = parsedValue;
                  print("Height updated to: ${bmiController.height.value}");
                },
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                }
            ),
          ),
        ],
      ),
    );
  }
}

