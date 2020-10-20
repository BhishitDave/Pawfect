import 'package:flutter/material.dart';
import 'package:petadoption/components/text_field_container.dart';

import '../constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFieldContainer(
          child: TextField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.person,
              color: kPrimaryColor,
            ),
            hintText: hintText,
            border: InputBorder.none),
        onChanged: onChanged,
      )),
    );
  }
}
