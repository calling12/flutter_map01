import 'package:App/futurn/DC/CCS2.dart';
import 'package:App/futurn/DC/CHAdeMo.dart';
import 'package:flutter/material.dart';
import 'AC/pageCCST2.dart';
import 'AC/pageCCsT1.dart';

Widget displayBottomsheet() {
  return Center(
    child: Column(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Icon(
              //   Icons.clear,
              //   size: 24,
              // ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          alignment: Alignment.center,
          height: 100,
          width: 400,
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/PTT.png',
                  width: 50,
                  height: 50,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'PTT station',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 10), // Add spacing between the text and boxes
        Container(
          height: 230,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Builder(
                        builder: (context) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageCCST1()),
                            );
                          },
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            child: Container(
                              color: Colors.white.withOpacity(0.3),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset(
                                      'assets/CCS1.png',
                                      width: 40,
                                      height: 50,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    // 'Ac type\nFlutter',
                                    'AC CCS TYPE 1',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),

                                  //borderRadius

                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      height: 20,
                                      width: 100,
                                      color: Colors.green.withOpacity(0.8),
                                      child: Center(
                                        child: Text(
                                          'Ready to use',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )

                                  //end borderRadius
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Builder(
                        builder: (context) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageCCST2()),
                            );
                          },
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            child: Container(
                              color: Colors.white.withOpacity(0.3),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset(
                                      'assets/ACtype2.png',
                                      width: 40,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'AC CCS Type 2',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 8),

                                  //borderRadius

                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      height: 20,
                                      width: 100,
                                      color: Colors.green.withOpacity(0.8),
                                      child: Center(
                                        child: Text(
                                          'Ready to ues',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )

                                  //end borderRadius
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Builder(
                        builder: (context) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CHAdeMO()),
                            );
                          },
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            child: Container(
                              color: Colors.white.withOpacity(0.3),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset(
                                      'assets/chademo1.png',
                                      width: 40,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Dc CHAdeMO',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),

                                  //borderRadius

                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      height: 20,
                                      width: 100,
                                      color: Colors.green.withOpacity(0.8),
                                      child: Center(
                                        child: Text(
                                          'Ready to ues',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )

                                  //end borderRadius
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Builder(
                        builder: (context) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageCCS2()),
                            );
                          },
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                            child: Container(
                              color: Colors.white.withOpacity(0.3),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Image.asset(
                                      'assets/CCS.png',
                                      width: 50,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Dc CCS2',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 5),

                                  //borderRadius

                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      height: 20,
                                      width: 100,
                                      color: Colors.red.withOpacity(0.8),
                                      child: Center(
                                        child: Text(
                                          'Not Availabel',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )

                                  //end borderRadius
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
