import 'package:flutter/material.dart';
import 'package:petadoption/components/text_field_container.dart';

import '../constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool stringVisibilty = true;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      onChanged: widget.onChanged,
      obscureText: stringVisibilty,
      decoration: InputDecoration(
          hintText: 'Password',
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            icon:
                Icon(stringVisibilty ? Icons.visibility : Icons.visibility_off),
            color: kPrimaryColor,
            onPressed: () {
              setState(() {
                stringVisibilty = !stringVisibilty;
              });
            },
          ),
          border: InputBorder.none),
    ));
  }
}
