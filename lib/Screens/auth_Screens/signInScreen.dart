import 'package:flutter/material.dart';
import '../../widgets/authButton.dart';
import '../../widgets/customTextField.dart';

class SignInScreen extends StatelessWidget {
  static const String ID = 'SignInScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            // first Block
            Padding(
              padding: EdgeInsets.only(right: 15.0, left: 15.0, top: 120.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
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
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 25),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text('Welcome,',
                                    style: TextStyle(
                                      fontFamily: 'SFProDisplay-Bold',
                                      fontSize: 30,
                                    )),
                              ),
                              Text('Sign in to Continue',
                                  style: TextStyle(
                                    fontFamily: 'SFProDisplay-Regular',
                                    color: Color(0xFF929292),
                                    fontSize: 15,
                                    wordSpacing: 1,
                                  )),
                            ]),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('SignUpScreen');
                              },
                              child: Text('Sign',
                                  style: TextStyle(
                                    fontFamily: 'SFProDisplay-Regular',
                                    fontSize: 20,
                                    color: Theme.of(context).primaryColor,
                                  )),
                            ),
                          ]),
                    ),
                    CustomTextField(
                      label: 'Email',
                      passwordMark: false,
                    ),
                    CustomTextField(
                      label: 'Password',
                      passwordMark: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(
                              fontFamily: 'SFProDisplay-Regular',
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(
                              fontFamily: 'SFProDisplay-Regular',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            //second Block
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text('-OR-',
                  style: TextStyle(
                    fontFamily: 'SFProDisplay-Regular',
                    fontSize: 18,
                  )),
            ),
            //Social media auth
            Auth_Button(
              icon: 'assets/images/Path 76.png',
              text: 'Sign In with Facebook',
            ),
            Auth_Button(
                icon: 'assets/images/icons8_Google_2.png',
                text: 'Sign In with Google'),
          ],
        )),
      ),
    );
  }
}
