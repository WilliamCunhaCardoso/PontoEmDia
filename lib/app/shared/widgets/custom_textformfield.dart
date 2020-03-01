import 'package:flutter/material.dart';

class CustomTxtFrmFld extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final bool isPasswd;
  final TextInputType keyboardType;

  CustomTxtFrmFld({
    @required this.hintText,
    this.textEditingController,
    this.isPasswd = false,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(splashColor: Colors.white),
      child: TextFormField(
        keyboardType: this.keyboardType,
        controller: this.textEditingController,
        obscureText: this.isPasswd ? this.isPasswd : false,
        decoration: InputDecoration(
          labelStyle: TextStyle(backgroundColor: Colors.white),
          filled: true,
          fillColor: Colors.white,
          hintText: this.hintText,
          contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
