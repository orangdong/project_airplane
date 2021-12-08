import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class InputField extends StatelessWidget {
  final String label;
  final String hint;
  final bool isHidden;
  final TextEditingController controller;

  const InputField({ 
    Key? key,
    required this.label,
    required this.hint,
    required this.controller,
    this.isHidden = false,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          SizedBox(height: 6),
          TextFormField(
            obscureText: isHidden,
            cursorColor: kBlackColor,
            controller: controller,
            autocorrect: false,
            enableSuggestions: false,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              hintText: hint,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor),
                borderRadius: BorderRadius.circular(defaultRadius)
              ),
            ),
          ),
        ],
      ),
    );
  }
}