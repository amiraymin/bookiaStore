import 'package:bookia_project/core/theme/app_colors.dart';
import 'package:bookia_project/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormFeild extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final String? Function(String?)? validator;

  const CustomTextFormFeild({
    super.key,
    required this.hintText,
    this.isPassword = false,
     this.validator,
  });

  @override
  State<CustomTextFormFeild> createState() => _CustomTextFormFeildState();
}

class _CustomTextFormFeildState extends State<CustomTextFormFeild> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword && isObscure,
      validator: widget.validator,
      onTapOutside: (v) {
        FocusScope.of(context).unfocus();
      },
      cursorColor: AppColors.mainColor,
      decoration: InputDecoration(
        suffix: widget.isPassword
            ? InkWell(
                onTap: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                child: const Icon(Icons.visibility),
              )
            : null,
        fillColor: Colors.white,
        filled: true,
        hintStyle: AppTextStyles().hintTextStyle,
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.borderColor), // BorderSide
        ), // OutlineInputBorder

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.borderColor), // BorderSide
        ), // OutlineInputBorder

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.mainColor), // BorderSide
        ), // OutlineInputBorder
      ), // InputDecoration
    ); // TextFormField
  }
}
