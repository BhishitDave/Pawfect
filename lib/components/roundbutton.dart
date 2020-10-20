import 'package:flutter/material.dart';
import 'package:petadoption/constants.dart';

class RoundedButton extends StatelessWidget {
  final String buttonName;
  final Function onPress;
  final Color color, textColor;
  const RoundedButton({
    this.buttonName,
    Key key,
    this.onPress,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: size.width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          onPressed: onPress,
          color: color,
          child: Text(
            '$buttonName',
            style: TextStyle(color: textColor),
          ),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        ),
      ),
    );
  }
}
