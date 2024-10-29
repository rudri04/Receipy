import 'package:flutter/material.dart';
import 'package:receipy/Utils/constants/Colors.dart';
import 'package:receipy/Widgets/custom_text.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {super.key,
      required this.validator,
      required this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false,
      required this.controller,
      required this.hintText,
      required this.textInputType, required this.text});

  final FormFieldValidator validator;
  final Widget prefixIcon;
  final String hintText, text;
  final TextInputType textInputType;
  Widget? suffixIcon;
  final TextEditingController controller;
  bool obscureText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            data: widget.text,
            fontsize: 16,
            fontWeight: FontWeight.bold,
            color: ColorsPalete.Dark),
        const SizedBox(height: 10,),
        TextFormField(
          validator: widget.validator,
          controller: widget.controller,
          obscureText: widget.obscureText,
          keyboardType: widget.textInputType,
          decoration: InputDecoration(
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              hintText: widget.hintText,
              hintStyle: const TextStyle(color: ColorsPalete.Grey2),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: ColorsPalete.Grey4),
                  borderRadius: BorderRadius.circular(16)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: ColorsPalete.Dark),
                  borderRadius: BorderRadius.circular(16))),
        ),
      ],
    );
  }
}
