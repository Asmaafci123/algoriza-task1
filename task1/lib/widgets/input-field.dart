import 'package:flutter/material.dart';
import 'package:task1/size.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final Widget? prefix;
  final Widget? suffix;
  final String error;
  const InputField(
      {Key? key,
      required this.hintText,
      required this.keyboardType,
      this.prefix,
      this.suffix,
      required this.error})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
          errorStyle: const TextStyle(height: 0),
          isDense: true,
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(5)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFFEFEEF3)),
              borderRadius: BorderRadius.circular(5)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(5)),
          fillColor: const Color(0xFFFDFCFF),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey[500],
          ),
          prefixIcon: prefix,
          suffixIcon: suffix),
      keyboardType: keyboardType,
      validator: (value) {
        if (value!.isEmpty) return error;
      },
    );
  }
}
