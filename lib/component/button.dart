import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final String? text;
  final Function()? onpressed;

  const button({super.key, this.text, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      child: Text(text ?? ""),
    );
  }
}
