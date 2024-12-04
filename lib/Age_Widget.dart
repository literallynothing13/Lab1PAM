import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab1/BmiController.dart';
import 'package:lab1/SecBtn.dart';

class AgeWidget extends StatelessWidget {
  const AgeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.put(BMIController());
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            height: 225,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("Age",
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.onSecondaryContainer
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Obx(
                        ()=> Text("${bmiController.age.value}",
                          style: TextStyle(
                              fontSize: 75,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.onSurface
                          ),
                        ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Secbtn(
                      onpress: () {
                        bmiController.age.value--;
                      },
                      icon: Icons.remove,
                    ),
                      Secbtn(
                       onpress: () {
                         bmiController.age.value++;
                       },
                        icon: Icons.add,
                      ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
