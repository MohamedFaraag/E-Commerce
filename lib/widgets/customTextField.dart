import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label ;
  final bool passwordMark;

  const CustomTextField({this.label , this.passwordMark});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top : 35.0 , bottom: 5),
            // margin: const EdgeInsets.only(top : 15.0),
            child: Text(label ,style: TextStyle(
              fontSize: 16,
              fontFamily:'SFProDisplay-Regular',
              color : Color(0xFF929292),
            )),
          ),
          TextField(
            obscureText: passwordMark,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 3)
            ),
            onChanged: (value){

            },
          ),
        ],
      ),
    );
  }
}