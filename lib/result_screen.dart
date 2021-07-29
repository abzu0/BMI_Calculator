import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final bool isMale;
  final double result;
  final int age;

  Color mainColor = Color(0xFF171717);
  Color subMainColor = Color(0xFF444444);
  Color secondaryColor = Color(0xFFDA0037);
  Color subSecondaryColor = Color(0xFFEDEDED);

  ResultScreen({
    required this.isMale,
    required this.result,
    required this.age,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: mainColor,
        title: Text(
          'Result',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Container(
            width: double.infinity,
            height: 600.0,
            decoration: BoxDecoration(
                color: subMainColor,
                borderRadius: BorderRadius.circular(20.0)
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    'RESULT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: secondaryColor,
                      fontSize: 30.0,

                    ),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                      Text(
                        'Gender: ${(isMale)? 'Male' : 'Female'}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: subSecondaryColor,
                          fontSize: 25.0,
                        ),

                      ),
                      Text(
                        'Result: ${result.round()}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: subSecondaryColor,
                          fontSize: 25.0,
                        ),

                      ),
                      Text(
                        'Age: ${age}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: subSecondaryColor,
                          fontSize: 25.0,
                        ),
                      ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
