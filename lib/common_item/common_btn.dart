import 'package:flutter/material.dart';

class CommonBtn extends StatelessWidget {
  final text;
  final color;
  final icon;
  final icon2;
  final VoidCallback onTap;

  const CommonBtn(
      {Key? key,
      this.text,
      this.color,
      required this.onTap,
      this.icon,
      this.icon2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialButton(
      onPressed: onTap,
      height: height * 0.07,
      minWidth: width,
      color: color,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5), borderSide: BorderSide.none),
      child: Row(
        children: [
          Icon(
            icon2,
            size: 25,
            color: Colors.white,
          ),
          Spacer(),
          Center(
            child: Text(
              "$text",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          Spacer(),
          Icon(
            icon,
            size: 25,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
