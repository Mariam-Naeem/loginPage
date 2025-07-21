import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final Color? hintColor;
  final Widget? prefixIcon;
  final String? hintText;
  final bool? obscuretext;
  final TextAlign? textAlign;

  const Textfield({
    super.key,
    this.hintColor,
    this.prefixIcon,
    this.hintText,
    this.textAlign,
    this.obscuretext
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: TextField(
        obscureText: obscuretext ?? false,
        textAlign: textAlign ?? TextAlign.left,
        decoration: InputDecoration(
          hintText: hintText ?? "Username",
      
          // prefixIcon: prefixIcon,
          suffixIcon: prefixIcon ?? null,
          hintStyle: TextStyle(color: hintColor),
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
