import 'package:flutter/material.dart';

class CustomTxtFrmFld extends StatelessWidget {
  final String label;
  final TextEditingController textEditingController;
  
  CustomTxtFrmFld({this.label, this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(splashColor: Colors.white),
      child: TextFormField(
        controller: null, // todo: parametrizar
        obscureText: false, // todo: parametrizar
        decoration: InputDecoration(
          labelStyle: TextStyle(backgroundColor: Colors.white),
          filled: true,
          fillColor: Colors.white,
          hintText: 'Username',
          contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(25.7),
          ),
        ),
      ),
    );
  }
}
