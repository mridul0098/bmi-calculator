import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'main.dart';

class bmi_calculation extends StatefulWidget {
  var agevalue = 20;
  var weightvalue = 50;
  double hightvalue = 100;

  bmi_calculation(this.agevalue, this.weightvalue, this.hightvalue);

  @override
  State<bmi_calculation> createState() => _bmi_calculationState();
}

class _bmi_calculationState extends State<bmi_calculation> {
  // double BMI = widget.agevalue / 5;

  void test() {
    var bmi = widget.agevalue /5;
    //print(bmi);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF26A69A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Your BMI =" +(widget.weightvalue / ((widget.hightvalue/100)*(widget.hightvalue/100))).toString(),

                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 40,),
            Center(
              child:
                  //Text("data"),
                  ElevatedButton(
                child: Text("Another BMI Calculation"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
