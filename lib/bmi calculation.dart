import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'main.dart';

class bmi_calculation extends StatefulWidget {
  var message;

  // var BMI;
  /*bmi_calculation(var message) {
    this.message = message;
  }*/

  @override
  State<bmi_calculation> createState() => _bmi_calculationState();
}

class _bmi_calculationState extends State<bmi_calculation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF26A69A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Your BMI =",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
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
