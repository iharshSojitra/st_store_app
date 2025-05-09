import 'package:flutter/material.dart';
import 'package:st_store/common_item/common_btn.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class OtpAuthentication extends StatefulWidget {
  const OtpAuthentication({Key? key}) : super(key: key);

  @override
  State<OtpAuthentication> createState() => _OtpAuthenticationState();
}

class _OtpAuthenticationState extends State<OtpAuthentication> {
  bool _onEditing = true;
  String? _code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "OTP Authentication",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "An authentication code has been\nsent to (+91) 9737787076",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: VerificationCode(
                    textStyle:
                        TextStyle(fontSize: 25.0, color: Colors.red[900]),
                    keyboardType: TextInputType.number,
                    underlineColor: Colors
                        .amber, // If this is null it will use primaryColor: Colors.red from Theme
                    length: 4,
                    cursorColor: Colors
                        .blue, // If this is null it will default to the ambient
                    // clearAll is NOT required, you can delete it
                    // takes any widget, so you can implement your design
                    clearAll: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'clear all',
                        style: TextStyle(
                            fontSize: 14.0,
                            decoration: TextDecoration.underline,
                            color: Colors.blue[700]),
                      ),
                    ),
                    onCompleted: (String value) {
                      setState(() {
                        _code = value;
                      });
                    },
                    onEditing: (bool value) {
                      setState(() {
                        _onEditing = value;
                      });
                      if (!_onEditing) FocusScope.of(context).unfocus();
                    },
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                CommonBtn(
                  onTap: () {},
                  color: Color(0xffC6AB59),
                  text: "CONTINUE",
                  icon: Icons.arrow_forward_sharp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
