import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petadoption/components/already_have_an_account.dart';
import 'package:petadoption/components/roundbutton.dart';
import 'package:petadoption/components/rounded_input_field.dart';
import 'package:petadoption/components/rounded_password_field.dart';
import 'package:petadoption/constants.dart';
import 'package:petadoption/view/signup/signup.dart';
import 'loginbackground.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({
    Key key,
  }) : super(key: key);

  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LoginBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/login_My.svg',
              height: size.height * 0.3,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            Container(
              padding: EdgeInsets.only(right: 40, top: 10, bottom: 10),
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password ?",
                style: TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.w600),
              ),
            ),
            RoundedButton(
              buttonName: 'LOGIN',
              onPress: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: true,
              press: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return SignUp();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
