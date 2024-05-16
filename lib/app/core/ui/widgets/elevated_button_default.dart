import 'package:flutter/material.dart';
import 'package:hidro_bloc/app/core/ui/styles/app_colors.dart';

class ElevatedButtonDefault extends StatelessWidget {
  const ElevatedButtonDefault({
    super.key,
    this.onPressed,
    required this.titleButton,
    this.colorButton,
    this.colorText,
    this.textSize,
    this.widthButton,
    this.heightButton,
    required this.textStyle,
  });

  final VoidCallback? onPressed;
  final String titleButton;
  final Color? colorButton;
  final Color? colorText;
  final double? textSize;
  final double? widthButton;
  final double? heightButton;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: colorButton ?? AppColors.primaryColor,
        elevation: 0,
        minimumSize: Size(
          widthButton ?? double.infinity,
          heightButton ?? 55.0,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        disabledBackgroundColor: AppColors.greyColor,
      ),
      child: Text(
        titleButton,
        style: textStyle,
      ),
    );
  }
}
