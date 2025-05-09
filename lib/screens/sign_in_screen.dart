import 'package:flutter/material.dart';
import 'package:st_store/common_item/common_btn.dart';
import 'package:st_store/common_item/common_textfield.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool selected = true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Form(
              key: formKey,
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
                    "Let's Sign You In",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome back, you've been missed!",
                    style: TextStyle(fontSize: 17, color: Colors.black54),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Username or Email",
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  CommonTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email can not be empty.";
                      }
                    },
                    hintText: "Username or Email",
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  CommonTextField(
                    obscure: selected,
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock_outlined),
                    suffixIcon: selected == true
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                selected = !selected;
                              });
                            },
                            icon: Icon(Icons.visibility_outlined))
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                selected = !selected;
                              });
                            },
                            icon: Icon(Icons.visibility_off_outlined)),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  CommonBtn(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        return print("Validate");
                      }
                    },
                    color: Color(0xffC6AB59),
                    text: "SIGN IN",
                    icon: Icons.arrow_forward_sharp,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CommonBtn(
                    onTap: () {},
                    color: Color(0xff3C79E6),
                    text: "Connect with facebook",
                    icon2: Icons.facebook_outlined,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
