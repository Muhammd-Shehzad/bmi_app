import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/mixlogo.png',
                  height: 500.h,
                  width: 200.w,
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Gender',
                        style: TextStyle(color: Colors.black, fontSize: 16.r),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Image.asset(
                              'assets/male.png',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Container(
                          height: 40.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Image.asset(
                              'assets/female.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Age',
                      style: TextStyle(color: Colors.black, fontSize: 16.r),
                    ),
                    Container(
                      height: 40.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: TextField(
                            // controller: ageController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          )),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 60.h,
              width: 300.w,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 141, 195, 240),
                      const Color.fromARGB(255, 72, 117, 196),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                  borderRadius: BorderRadius.circular(15)),
            ),
          ],
        ),
      ),
    );
  }
}
