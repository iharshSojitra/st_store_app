import 'package:flutter/material.dart';
import 'package:st_store/common_item/common_btn.dart';

class OnBoarding_1 extends StatefulWidget {
  const OnBoarding_1({Key? key}) : super(key: key);

  @override
  State<OnBoarding_1> createState() => _OnBoarding_1State();
}

class _OnBoarding_1State extends State<OnBoarding_1> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.63,
                  width: width,
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
                Positioned(
                  right: -170,
                  top: 30,
                  child: CircleAvatar(
                      radius: 170,
                      backgroundColor: Color(
                        0xffC6AB59,
                      )),
                ),
                Positioned(
                  left: -120,
                  bottom: 20,
                  child: CircleAvatar(
                      radius: 110,
                      backgroundColor: Color(
                        0xff8F92A1,
                      )),
                ),
                Positioned(
                  top: 130,
                  left: 00,
                  right: 00,
                  child: Image(
                    image: AssetImage('assets/images/img.png'),
                    height: height * 0.40,
                    width: width,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Welocome to STstore !",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "With long experience in the audio industy,",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            Text(
              "we create the best quality products",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CommonBtn(
                onTap: () {},
                color: Color(0xffC6AB59),
                text: "GET  STARTED",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
