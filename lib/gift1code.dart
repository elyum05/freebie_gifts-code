import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Gift1code extends StatefulWidget {
  const Gift1code({Key? key}) : super(key: key);

  @override
  State<Gift1code> createState() => _Gift1codeState();
}

class _Gift1codeState extends State<Gift1code> {
  final Stream<QuerySnapshot> _codes =
      FirebaseFirestore.instance.collection('codes').snapshots();

  // @override
  // void initState() {
  //   codeGet();
  //   super.initState();
  // }

  // codeGet() async {
  //   var collection = FirebaseFirestore.instance.collection('codes');
  //   collection.doc('cods').snapshots().listen((docSnapshot) {
  //     Map<String, dynamic> data = docSnapshot.data()!;

  //     var code1 = data['code1'];
  //     var code2 = data['code2'];
  //     var code3 = data['code3'];
  //     print('Code 1: $code1');
  //     print('Code 2: $code2');
  //     print('Code 3: $code3');
  //     AlertDialog(
  //       title: Text(code1, style: TextStyle(color: Colors.black)),
  //       backgroundColor: Colors.white,
  //     );
  //   });
  // }

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
                        Text(data['code1'],
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
