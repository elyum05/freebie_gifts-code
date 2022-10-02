import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Gift2code extends StatefulWidget {
  const Gift2code({Key? key}) : super(key: key);

  @override
  State<Gift2code> createState() => _Gift2codeState();
}

class _Gift2codeState extends State<Gift2code> {
  final Stream<QuerySnapshot> _codes =
      FirebaseFirestore.instance.collection('codes').snapshots();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(),
        Text('Your code:',
            style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.w400)),
        StreamBuilder<QuerySnapshot>(
          stream: _codes,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading");
            }

            return ListView(
              shrinkWrap: true,
              children: snapshot.data!.docs
                  .map((DocumentSnapshot document) {
                    Map<String, dynamic> data =
                        document.data()! as Map<String, dynamic>;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(data['code2'],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontWeight: FontWeight.w700)),
                      ],
                    );
                  })
                  .toList()
                  .cast(),
            );
          },
        ),
        Spacer()
      ],
    );
  }
}
