import 'package:flutter/material.dart';

class CustemTextFormField extends StatelessWidget {
  String? hintText;
  bool? obscure;
  TextInputType? textInputType;
  Function(String)? onChanged;
  CustemTextFormField.CustemTextField(
      {this.hintText,
      this.onChanged,
      this.obscure = false,
      this.textInputType});
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure!,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      ),
    );
  }
}
