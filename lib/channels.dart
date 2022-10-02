import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Channels extends StatefulWidget {
  const Channels({Key? key}) : super(key: key);

  @override
  State<Channels> createState() => _ChannelsState();
}

class _ChannelsState extends State<Channels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 7, 7, 1),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/back2.png'), fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 85,
            ),
            Center(
              child: Text('Do you want free crypto?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700)),
            ),
            Text('Just subscribe on my channel.',
                style: TextStyle(
                    color: Color.fromARGB(255, 24, 73, 232),
                    fontSize: 21,
                    fontWeight: FontWeight.w400)),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('FREEBIE CRYPTOBOX',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontWeight: FontWeight.w700)),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          // ignore: deprecated_member_use
                          onTap: () => launch('t.me/+2oo-tYiHMdAyYTEy'),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            width: 135,
                            height: 52,
                            alignment: Alignment.center,
                            child: Text('Subscribe',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700)),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                  ],
                ),
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/cback.png'),
                      fit: BoxFit.cover,
                      opacity: 0.15),
                  borderRadius: BorderRadius.circular(15),
                  gradient: SweepGradient(colors: [
                    Color.fromRGBO(0, 87, 255, 1),
                    Color.fromARGB(255, 51, 21, 90)
                  ], transform: GradientRotation(1.57)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
