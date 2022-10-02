import 'package:flutter/material.dart';
import 'package:freebie_app/body.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(7, 7, 7, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 375,
            child: Padding(
              padding: EdgeInsets.only(left: 45, right: 45, top: 25),
              child: Image.asset('assets/fre_app.png'),
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/back.png'), fit: BoxFit.fill)),
          ),
          SizedBox(
            height: 7,
          ),
          Container(
            width: 75,
            height: 5,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(150)),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Text('Free crypto\nby FREEBIE',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 31,
                    fontWeight: FontWeight.w700)),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(45),
            child: Row(
              children: [
                Spacer(),
                InkWell(
                  borderRadius: BorderRadius.circular(150),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Body()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 58,
                    child: Text('>',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 31,
                            fontWeight: FontWeight.w400)),
                    height: 58,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(150)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
