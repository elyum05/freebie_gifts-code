import 'package:flutter/material.dart';
import 'package:freebie_app/ad1.dart';
import 'package:freebie_app/ad2.dart';
import 'package:freebie_app/ad3.dart';

class Boxes extends StatefulWidget {
  const Boxes({Key? key}) : super(key: key);
  @override
  State<Boxes> createState() => _BoxesState();
}

class _BoxesState extends State<Boxes> {
  final Shader linearGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 68, 155, 254),
      Color.fromRGBO(0, 41, 255, 1),
    ],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 7, 7, 1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hey!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700)),
              Text('If you want a gift -',
                  style: TextStyle(
                      color: Color.fromRGBO(195, 195, 195, 1),
                      fontSize: 21,
                      fontWeight: FontWeight.w400)),
              SizedBox(
                height: 25,
              ),
              Text('Be the fastest!',
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      foreground: Paint()..shader = linearGradient)),
              SizedBox(height: 25),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Gift #1',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/gift.png', height: 52),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Ad1()));
                          },
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                              child: Text('Claim',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                              width: 130,
                              height: 48,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white)),
                        )
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    gradient: SweepGradient(colors: [
                      Color.fromRGBO(0, 87, 255, 1),
                      Color.fromRGBO(21, 36, 90, 1)
                    ], transform: GradientRotation(1.57)),
                    borderRadius: BorderRadius.circular(15)),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Gift #2',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/gift.png', height: 52),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Ad2()));
                          },
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                              child: Text('Claim',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                              width: 130,
                              height: 48,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white)),
                        )
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    gradient: SweepGradient(colors: [
                      Color.fromRGBO(26, 255, 45, 1),
                      Color.fromRGBO(16, 78, 48, 1)
                    ], transform: GradientRotation(1.57)),
                    borderRadius: BorderRadius.circular(15)),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Gift #3',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/gift.png', height: 52),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Ad3()));
                          },
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                              child: Text('Claim',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                              width: 130,
                              height: 48,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white)),
                        )
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    gradient: SweepGradient(colors: [
                      Color.fromRGBO(255, 0, 255, 1),
                      Color.fromRGBO(71, 11, 72, 1)
                    ], transform: GradientRotation(1.57)),
                    borderRadius: BorderRadius.circular(15)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
