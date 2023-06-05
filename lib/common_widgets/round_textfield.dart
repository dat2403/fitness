import 'package:fitness/common/color_extension.dart';
import 'package:flutter/material.dart';

class RoundTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final TextInputType? keyboardType;
  final String hintText;
  final bool obscureText;
  final Widget? rightIcon;
  final String icon;
  final EdgeInsets? margin;

  const RoundTextField({
    Key? key,
    this.textEditingController,
    required this.hintText,
    required this.icon,
    this.margin,
    this.keyboardType,
    this.obscureText = false,
    this.rightIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: TColor.lightGray,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        controller: textEditingController,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          suffixIcon: rightIcon,
          prefixIcon: Container(
            width: 15,
            height: 15,
            alignment: Alignment.center,
            child: Image.asset(
              icon,
              width: 15,
              height: 15,
              fit: BoxFit.contain,
              color: TColor.gray,
            ),
          ),
          hintStyle: TextStyle(
            color: TColor.gray,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
