import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:timer_button/timer_button.dart';
import 'package:freebie_app/gift2code.dart';

class Ad2 extends StatefulWidget {
  Ad2({Key? key}) : super(key: key);

  @override
  State<Ad2> createState() => _Ad2State();
}

class _Ad2State extends State<Ad2> {
  final Stream<QuerySnapshot> _ads =
      FirebaseFirestore.instance.collection('ad2').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 7, 7, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StreamBuilder<QuerySnapshot>(
            stream: _ads,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return const Text('Something went wrong');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Text("Loading");
              }

              return ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: snapshot.data!.docs
                    .map((DocumentSnapshot document) {
                      Map<String, dynamic> data =
                          document.data()! as Map<String, dynamic>;
                      return Column(
                        children: [
                          ListTile(
                            title: Padding(
                              padding: EdgeInsets.all(7),
                              child: Text(data['title'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700)),
                            ),
                            subtitle: Container(
                                padding: EdgeInsets.all(7),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25)),
                                child: Image.network(data['image'])),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(data['desc'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontFamily: 'Inter')),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                borderRadius: BorderRadius.circular(15),
                                onTap: () => launch(data['adlink']),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  width: 158,
                                  height: 52,
                                  alignment: Alignment.center,
                                  child: Text('Підписатися',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                width: 158,
                                height: 52,
                                child: TimerButton(
                                  buttonType: ButtonType.ElevatedButton,
                                  label: 'Отримати код',
                                  timeOutInSeconds: 20,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Gift2code()));
                                  },
                                  color: Color.fromARGB(255, 55, 239, 129),
                                  activeTextStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          )
                        ],
                      );
                    })
                    .toList()
                    .cast(),
              );
            },
          ),
        ],
      ),
    );
  }
}
