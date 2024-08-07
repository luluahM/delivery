import 'package:deliver/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.pink,
      child: Column(
        children: [
          Expanded(
              child: Center(
            child: Image.asset('assets/food (1).png',
                height: 250, fit: BoxFit.contain),
          )),
          SizedBox(
            height: 20,
          ),
          Text(
            "اطلب اكلك الان ",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontStyle: FontStyle.italic),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "دقايق ويكون عند باب بيتك",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(0, 6))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "اضغط هنا",
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
