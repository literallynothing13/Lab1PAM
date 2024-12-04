import 'package:get/get.dart';


class BMIController extends GetxController{
    RxString Gender = "Male".obs;
    RxInt weight = 43.obs;
    RxInt age = 23.obs;
    RxDouble height = 0.0.obs;
    RxDouble BMI = 0.0.obs;
    RxString classification = "".obs;

    void genderHandle(String gender) {
     Gender.value = gender;
    }

    void calculateBMI(){
      var HMeter = height / 100;

      if(height.value == 0.0){
        BMI.value = 0.0;
        showStatus();
        return;
      }

      BMI.value = weight /(HMeter*HMeter);
      BMI.value = double.parse(BMI.value.toStringAsFixed(1));

      showStatus();
    }

    void showStatus(){
       if(BMI.value < 18.5){
          classification.value = "Underweight";
       }
       else if(BMI.value >= 18.5 && BMI.value <= 24.9) {
         classification.value = "Normal";
       }
       else if(BMI.value >= 25 && BMI.value <= 29.9) {
         classification.value = "Overweight";
       }
       else if(BMI.value >= 30 && BMI.value <= 34.9) {
         classification.value = "Obese";
       }
    }
}