import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:st_store/common_item/common_btn.dart';
import 'package:st_store/common_item/common_textfield.dart';

class PasswordRecovery extends StatefulWidget {
  const PasswordRecovery({Key? key}) : super(key: key);

  @override
  State<PasswordRecovery> createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
  final phoneNo = TextEditingController();
  String countryCode = "91";
  String countryFlag = "";
  String country = "indian";
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
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 28,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Perth,Western Australia",
                      textScaleFactor: 1.1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Password Recovery",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter your phone number to recover\nyour password",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Phone Number",
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  height: 7,
                ),
                CommonTextField(
                  maxLength: 10,
                  controller: phoneNo,
                  keyboardType: TextInputType.number,
                  hintText: "Enter Number",
                  suffixIcon: phoneNo.text.length == 10
                      ? Icon(
                          Icons.check,
                          color: Colors.green,
                        )
                      : SizedBox(),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, top: 0, bottom: 6, right: 10),
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
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("+${countryCode}"),
                          SizedBox(
                            width: 5,
                          ),
                          Text(countryFlag.isEmpty ? "" : countryFlag),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                CommonBtn(
                  onTap: () {},
                  color: Color(0xffC6AB59),
                  text: "CONTINUE",
                  icon: Icons.keyboard_tab,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
