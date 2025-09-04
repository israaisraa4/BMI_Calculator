import 'dart:math';

class BMICalculator {
  final int weight;
  final int height;
  double bmi = 0;

  BMICalculator({required this.weight, required this.height}) {
    bmiCalc();
  }

  void bmiCalc() {
    print("weight = $weight height = $height");
    bmi = weight / pow(height / 100, 2);
    print("BMI = $bmi");
  }

  String getResult() {
    if (bmi >= 40)
      return 'Obsese';
    else if (bmi >= 25)
      return 'Overweight';
    else if (bmi >= 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getAdvice() {
    if (bmi >= 40)
      return "رجاء اهتم بنفسك + اذهب للدكتور + وضعك صعب";
    else if (bmi >= 25)
      return "Your body weight is currently higher than the recommended weight. Consider some small changes such as taking the stairs over the elevator.";
    else if (bmi > 18.5)
      return "Your body weight is exactly where it should be, keep on keeping on!";
    else
      return "Your body weight is a bit lower than the recommended weight, treat yourself to your favorite food or try lifting weights to gain muscle mass.";
  }
}
