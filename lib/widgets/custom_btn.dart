import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final txtColor;
  final bgColor;
  final shadowColor;
  final Function onTap;

  const CustomButton(
      {Key? key,
      required this.text,
      this.txtColor,
      this.bgColor,
      this.shadowColor,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap;
      },
      child: PhysicalModel(
        color: Colors.grey.withOpacity(.4),
        elevation: 2,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: bgColor ?? Colors.black,
            ),
            child: Container(
              margin: EdgeInsets.all(14),
              alignment: Alignment.center,
              child: Text(
                 text,
                 style: TextStyle(
                  color: txtColor ?? Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.normal,
                 ),
                
              ),
            )),
      ),
    );
  }
}