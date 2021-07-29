import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  Color mainColor = Color(0xFF171717);
  Color subMainColor = Color(0xFF444444);
  Color secondaryColor = Color(0xFFDA0037);
  Color subSecondaryColor = Color(0xFFEDEDED);
  bool isMale =true;
  double height =180;
  int weight =60;
  int age =28;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor ,
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0.0,
        title: Center(
          child: Text(
            'BMI CALCULATOR',
                style: TextStyle(
              color: Colors.white,
                  fontSize: 18.0,
          ),
          ),
        ),
      ),
      body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                    mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        child: GestureDetector(
                          onTap: ()
                          {
                            setState(() {
                              isMale =true;
                            });
                          },
                          child: Container(

                            decoration: BoxDecoration(
                              color: isMale ? secondaryColor :subMainColor,
                              borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                    Icons.male,
                                  color: Colors.white,
                                  size: 90.0,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'MALE',
                                  style: TextStyle(
                                    color: isMale ? Colors.white:secondaryColor ,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: isMale ? subMainColor : secondaryColor,
                              borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                color: Colors.white,
                                size: 90.0,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  color: isMale ? secondaryColor : Colors.white ,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(

                        decoration: BoxDecoration(
                            color: subMainColor,
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'HEIGHT',
                              style: TextStyle(
                                color: secondaryColor,
                                fontSize: 15.0,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  '${height.round()}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 80.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'cm',
                                  style: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 20.0,
                                  ),
                                ),

                              ],
                            ),
                            Slider(
                                value: height,
                                max: 300.0,
                                min: 30.0,
                                activeColor: secondaryColor,
                                inactiveColor: subSecondaryColor,
                                onChanged: (value){
                                  setState(() {
                                    height = value;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: subMainColor,
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                color: secondaryColor,
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              '${weight}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 80.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        if (weight>0) weight--;
                                      });
                                    },
                                  mini: true,
                                    child: Icon(
                                      Icons.remove,
                                      size: 30,
                                      color: secondaryColor,
                                    ),
                                    backgroundColor: subSecondaryColor,
                                  ),
                                SizedBox(
                                  width: 20,
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                    color: secondaryColor,
                                  ),
                                  backgroundColor: subSecondaryColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: subMainColor,
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                color: secondaryColor,
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              '${age}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 80.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      if (age>0) age--;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                    size: 30,
                                    color: secondaryColor,
                                  ),
                                  backgroundColor: subSecondaryColor,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                    color: secondaryColor,
                                  ),
                                  backgroundColor: subSecondaryColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            Container(
              width: double.infinity,
              height: 60.0,
              color: secondaryColor,

              child: MaterialButton(
                onPressed: (){},
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),

          ],
        ),

    );
  }
}
