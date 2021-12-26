import 'package:bmi_calculator/bmi%20calculation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "bmi calculation",
    home: Scaffold(
      appBar: AppBar(
        title: Text("bmi calculation"),
      ),
      backgroundColor: Colors.black,
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//variable declare
  var agevalue = 20;
  var weightvalue = 50;
  double hightvalue = 2;
  //var BMI=0;

  var activeCardColor = Colors.amber;
  var inActiveCardColor = Colors.cyan;

  var maleCardColor = Colors.cyan;
  var femaleCardColor = Colors.cyan;

  void updateColor(Gender) {
    if (Gender == 100) {
      if (maleCardColor == inActiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inActiveCardColor;
      } else if (maleCardColor == activeCardColor) {
        maleCardColor = inActiveCardColor;
      }
    }
  }

  void updateColor2(int Gender) {
    if (Gender == 200) {
      if (femaleCardColor == inActiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inActiveCardColor;
      } else if (femaleCardColor == activeCardColor)
        femaleCardColor = inActiveCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
//1st column design
//1st column 1st row

    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColor(100);
                  });
                },
                child: Container(
                  //width: 100,
                  // height: 100,
                  margin: EdgeInsets.all(10),
                  color: maleCardColor,
                  child: Center(
                    child: Column(
                      children: [
                        Icon(
                          Icons.male,
                          size: 100,
                        ),
                        Text(
                          "male",
                          style: TextStyle(
                            //  color: Colors.green,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),

//1st column 2nd row

              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColor2(200);
                  });
                },
                child: Container(
                  //width: 100,
                  // height: 100,
                  margin: EdgeInsets.all(10),
                  color: femaleCardColor,
                  child: Center(
                    child: Column(
                      children: [
                        Icon(
                          Icons.female,
                          size: 100,
                        ),
                        Text(
                          "female",
                          style: TextStyle(
                            //  color: Colors.green,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
            ],
          ),
        ),

//2nd colum design
//slider design

        Expanded(
          child: Center(
            child: Container(
              child: Column(
                children: [
                  Text(
                    "HIGHT",
                    style: TextStyle(
                      //  color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "${hightvalue}  cm",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Slider(
                      value: hightvalue,
                      min: 0,
                      max: 250,
                      divisions: 250,
                      onChanged: (value) {
                        setState(() {
                          hightvalue= value;
                        });
                        //print(value);
                      }),
                ],
              ),
              // width: 100,
              // height: 100,
              margin: EdgeInsets.all(10),
              color: Colors.amber,
            ),
          ),
        ),

//3rd column design
//3rd column 1st row
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            "weight",
                            style: TextStyle(
                              //  color: Colors.green,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          "$weightvalue",
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weightvalue--;
                                  });
                                },
                                child: Icon(Icons.remove),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Center(
                              child: FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weightvalue++;
                                  });
                                },
                                child: Icon(Icons.add),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    //width: 100,
                    //  height: 100,
                    margin: EdgeInsets.all(10),
                    color: Colors.amber,
                  ),
                ),
              ),

//3rd column 2nd row design

              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "AGE",
                          style: TextStyle(
                            //  color: Colors.green,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Text(
                        "$agevalue",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  agevalue--;
                                });
                              },
                              child: Icon(Icons.remove),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Center(
                            child: FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  agevalue++;
                                });
                              },
                              child: Icon(Icons.add),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  //width: 100,
                  //  height: 100,
                  margin: EdgeInsets.all(10),
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
//4th column design
//bmi calculation part

        // BMI=weightvalue;

        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return bmi_calculation();
            }));
            print("value");
          },
          child: Container(
            //width: infinite,
            height: 100,
            margin: EdgeInsets.all(10),
            color: Colors.red,
            child: Center(
                child: Text(
              "CALCULATE YOUR BMI",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            )),
          ),
        ),
      ],
    );
  }
}

