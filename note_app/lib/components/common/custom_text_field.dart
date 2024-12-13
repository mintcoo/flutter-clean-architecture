import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/ui/colors.dart';

class CustomTextField extends StatefulWidget {
  final String? placeholder;
  final double? fontSize;
  final int? maxLines;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    this.placeholder,
    this.fontSize,
    this.maxLines,
    this.controller,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      maxLines: widget.maxLines,
      style: TextStyle(
        fontSize: widget.fontSize ?? 16.sp,
        color: darkGrey,
        decorationThickness: 0,
      ),
      decoration: InputDecoration(
        hintText: widget.placeholder,
        border: InputBorder.none,
        hintStyle: TextStyle(
          fontSize: widget.fontSize ?? 16.sp,
          color: Colors.grey,
        ),
      ),
    );
  }
}
