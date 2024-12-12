import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/ui/colors.dart';

class CustomTextField extends StatefulWidget {
  final String? placeholder;
  final double? fontSize;
  final int? maxLines;

  const CustomTextField({
    super.key,
    this.placeholder,
    this.fontSize,
    this.maxLines,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    // 컨트롤러 달아주면 화면 닫힐 때 꼭 제거해야함
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textController,
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
