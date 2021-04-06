import 'package:flutter/material.dart';
import '../../widgets/authButton.dart';
import '../../widgets/customTextField.dart';

class SignUpScreen extends StatelessWidget {
  static const String ID = 'SignUpScreen';
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top:60 , left: 10 , right:10),
                    child: Icon(
                        Icons.chevron_left ,size:30
                    ),
                  ),
                ),
                // first Block
                Padding(
                  padding: EdgeInsets.only(right:15.0 ,left:15.0 , top:50.0 ),
                  child: Container(
                    decoration: BoxDecoration(
                      color : Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200],
                          offset: Offset(0, 10.0),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0 , bottom:25),
                          child: Row(
                              mainAxisAlignment : MainAxisAlignment.spaceBetween,
                              children : [
                                Column (
                                    children : [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom :8.0),
                                        child: Text('Sign Up', style : TextStyle(
                                          fontFamily:'SFProDisplay-Bold',
                                          fontSize : 30,
                                        )),
                                      ),
                                    ]
                                ),
                              ]
                          ),
                        ),
                        CustomTextField(label: 'Name' , passwordMark: false,),
                        CustomTextField(label: 'Email' , passwordMark: false,),
                        CustomTextField(label: 'Password' , passwordMark: true,),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 40),
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 3),
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius:
                                BorderRadius.all(Radius.circular(4))),
                            child: TextButton(
                                onPressed: () {

                                },
                                child: Text(
                                  'SIGN Up',
                                  style: TextStyle(
                                    fontFamily:'SFProDisplay-Regular',
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}




