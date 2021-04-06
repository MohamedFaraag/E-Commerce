import 'package:flutter/material.dart';

class Auth_Button extends StatelessWidget {
  final String icon ;
  final String text ;
  const Auth_Button({
    this.icon ,
    this.text
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0 , vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Color(0xffDDDDDD))
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 35),
          leading: Image(
            image: AssetImage(icon),
            width: 20,
            height: 20,
          ),
          title: Center(
            child: Text(text,
                style : TextStyle(
                  fontFamily:'SFProDisplay-Regular',
                  fontSize : 15,
                )),
          ),
        ),
      ),
    );
  }
}