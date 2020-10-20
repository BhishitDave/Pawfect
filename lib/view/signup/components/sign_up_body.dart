import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petadoption/components/already_have_an_account.dart';
import 'package:petadoption/components/or_divider.dart';
import 'package:petadoption/components/roundbutton.dart';
import 'package:petadoption/components/rounded_input_field.dart';
import 'package:petadoption/components/rounded_password_field.dart';
import 'package:petadoption/components/social_icon.dart';
import 'package:petadoption/view/sigin_in_screen/signin.dart';
import 'package:petadoption/view/signup/components/signup_background.dart';

class SignUpBody extends StatefulWidget {
  @override
  _SignUpBodyState createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SignupBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SIGNUP',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/Welcome.svg',
              height: size.height * 0.25,
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
            RoundedButton(
              buttonName: 'SIGNUP',
              onPress: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Signin();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
