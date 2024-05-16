import 'package:flutter/material.dart';
import 'package:hidro_bloc/app/core/ui/styles/app_colors.dart';

class TextFormDefault extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Function(String)? onChanged;
  const TextFormDefault({
    super.key,
    required this.controller,
    required this.label,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        label: Text(label),
        isDense: true,
        labelStyle: const TextStyle(color: AppColors.blackGreyColor),
        focusColor: AppColors.greyColor,
        hoverColor: AppColors.blackGreyColor,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.greyColor, width: 2),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.redAccentColor, width: 2),
        ),
        prefixStyle: const TextStyle(color: AppColors.blackGreyColor),
        errorStyle: const TextStyle(color: AppColors.redAccentColor),
      ),
      onChanged: onChanged,
      cursorColor: AppColors.blackGreyColor,
    );
  }
}
