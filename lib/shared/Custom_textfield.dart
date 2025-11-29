import 'package:flutter/material.dart';
import 'package:hungry/core/Constant/app_colors.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield({
    super.key,
    required this.hint,
    required this.ispassword,
    this.controller,
  });
  final String hint;
  final bool ispassword;
  final TextEditingController? controller;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  late bool _obscureText;
  @override
  void initState() {
    _obscureText = widget.ispassword;
    super.initState();
  }

  void _togglePassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primarycolor,
      validator: (v) {
        if (v == null || v.isEmpty) {
          return 'please fill ${widget.hint}';
        }
        null;
      },
      controller: widget.controller,
      obscureText: _obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.primarycolor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.primarycolor),
        ),
        hintText: widget.hint,
        hintStyle: TextStyle(color: AppColors.primarycolor),
        fillColor: Colors.white,
        suffixIcon: widget.ispassword
            ? GestureDetector(
                onTap: () {
                  _togglePassword();
                },
                child: Icon(
                  Icons.remove_red_eye,
                  color: AppColors.primarycolor,
                ),
              )
            : null,
        filled: true,
      ),
    );
  }
}
