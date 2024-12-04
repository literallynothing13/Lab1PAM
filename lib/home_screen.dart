import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab1/Age_Widget.dart';
import 'package:lab1/BmiController.dart';
import 'package:lab1/Height_Widget.dart';
import 'package:lab1/PrimaryButton.dart';
import 'package:lab1/RactButton.dart';
import 'package:lab1/Weight_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.put(BMIController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 20),// "Welcome 😊" text row
              const Row(
                children: [
                  Text(
                    "Welcome 😊",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // "BMI Calculator" text row
              Row(
                children: [
                  Text(
                    "BMI Calculator",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Gender selection row (Male and Female)
              Row(
                children: [
                  Primarybutton(
                      icon: Icons.male,
                      btnName: "Male",
                      onPress: () {
                        bmiController.genderHandle("Male");
                      },
                  ),
                  SizedBox(width: 20),
                  Primarybutton(
                      icon: Icons.female,
                      btnName: "Female",
                      onPress: () {
                        bmiController.genderHandle("Female");
                      },
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WeightWidget(),
                    SizedBox(width: 20),
                    AgeWidget(),
                  ],
                ),
              const SizedBox(height: 30,),
              HeightWidget(),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(()=>
                      Text(
                        "${bmiController.BMI.value} ",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary
                        ),
                      ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(()=>
                      Text(
                        "${bmiController.classification.value}",
                        style: TextStyle(
                            fontSize: 50,
                            color: Theme.of(context).colorScheme.primary
                        ),
                      ),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              Ractbutton(btnName: "Lets Go", onPress: () {
                  bmiController.calculateBMI();
                },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
