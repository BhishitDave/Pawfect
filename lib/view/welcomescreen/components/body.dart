import 'package:flutter/material.dart';
import 'package:petadoption/view/sigin_in_screen/signin.dart';
import 'package:petadoption/view/signup/signup.dart';
import 'package:petadoption/view/welcomescreen/components/background.dart';
import 'package:petadoption/components/roundbutton.dart';
import 'package:petadoption/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // total height and width
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to PawFect',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Center(
            child: Image.asset(
              'assets/images/welcome.png',
              height: size.height * 0.3,
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RoundedButton(
            buttonName: 'LOGIN',
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Signin();
                  },
                ),
              );
            },
          ),
          RoundedButton(
            buttonName: 'SIGN UP',
            color: kPrimaryLightColor,
            textColor: Colors.black,
            onPress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUp();
              }));
            },
          ),
        ],
      ),
    );
  }
}
