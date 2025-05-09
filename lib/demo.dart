import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  String country = "indian";

  final phoneNo = TextEditingController();

  List country_flage = [
    // "asserts/image/indian.png",
    // "asserts/image/uk.png",
    // "asserts/image/canada.png",
    // "asserts/image/loundan.png",
    // "asserts/image/usa.png",

    "indian",
    "us",
    "uk",
    "london",
    "canada",
  ];

  String countryCode = "91";
  String countryFlag = "";

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffEFF5FE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              "Registration",
              style: TextStyle(
                color: Color(0xff011A51),
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Enter your mobile phone number, we will send\nyou OTP to verify later.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Image.asset(
              'asserts/image/Group 261.png',
              height: height * 0.15,
              width: width * 0.35,
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                controller: phoneNo,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 0, right: 10),
                    child: InkWell(
                      onTap: () {
                        showCountryPicker(
                          context: context,
                          showPhoneCode:
                              true, // optional. Shows phone code before the country name.
                          onSelect: (Country country) {
                            setState(() {
                              countryCode = country.phoneCode;
                              countryFlag = country.flagEmoji;
                            });
                          },
                        );
                      },
                      child: Row(
                        children: [
                          Text("+${countryCode}"),
                          Text(countryFlag.isEmpty ? "" : countryFlag)
                        ],
                      ),
                    ),
                  ),
                  suffixIcon: phoneNo.text.length == 10
                      ? Icon(
                          Icons.check_circle,
                          color: Color(0xffFB847C),
                        )
                      : SizedBox(),
                  hintText: "Number",
                  labelText: "Number Phone",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 55,
            ),
            // comman_button(
            //   ontap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => otp_Screen(),
            //         ));
            //   },
            //   color: Color(0xffFB847C),
            //   text: "Send Via SMS",
            // ),
            SizedBox(
              height: 16,
            ),
            // comman_button(
            //   ontap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => otp_Screen(),
            //         ));
            //   },
            //   color: Color(0xff0D3F79),
            //   text: "Send Via WhatsApp",
            // ),
            SizedBox(
              height: 70,
            ),
            Text(
              "By creating and/or using an account, you\nagree to our Terms & Conditions.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
