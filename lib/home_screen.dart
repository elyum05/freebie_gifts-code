import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 7, 7, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/back2.png'), fit: BoxFit.fill)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 52),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700)),
                  Text('Free crypto is waiting for you.',
                      style: TextStyle(
                          color: Color.fromRGBO(195, 195, 195, 1),
                          fontSize: 21,
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                      child: Image.asset(
                    'assets/freebie_prize.png',
                    height: 275,
                  ))
                ],
              ),
            ),
          ),
          Spacer(),
          Text('Claim the gifts here',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w400)),
          SizedBox(
            height: 25,
          ),
          Image.asset('assets/arrow.png', height: 46)
        ],
      ),
    );
  }
}
