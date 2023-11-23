// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/palettes.dart';

class CustomTextField2 extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? text;
  final String? hintText;
  final String? suffixIconPath;
  final Color? suffixIconColor;

  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? widgetMargin;
  final EdgeInsetsGeometry? widgetPadding;
  final bool? autofocus;
  final bool? obscureText;
  final bool? autocorrect;
  final bool? enabled;
  final bool? passWordChecker;
  final void Function(String? value)? onChanged;
  final void Function()? onTap;
  final void Function()? suffixIconTap;

  const CustomTextField2({
    Key? key,
    this.controller,
    this.widgetMargin,
    this.suffixIconPath,
    this.onChanged,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.autofocus,
    this.onTap,
    this.enabled = true,
    this.text,
    this.hintText,
    this.keyboardType,
    this.widgetPadding,
    this.autocorrect,
    this.obscureText,
    this.suffixIconColor,
    this.suffixIconTap,
    this.passWordChecker = false,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widgetMargin ?? const EdgeInsets.symmetric(vertical: 0),
      padding: widgetPadding ?? const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            text ?? 'EMAIL ADDRESS',
            style: Get.textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w600,
              color: const Color(0xff7B7979),
              fontSize: 12,
            ),
          ),
          SizedBox(
            height: 40,
            child: TextField(
              focusNode: focusNode,
              enabled: enabled,
              obscureText: obscureText ?? false,
              autocorrect: autocorrect ?? false,
              autofocus: autofocus ?? false,
              onTap: onTap,
              onChanged: onChanged,
              controller: controller,
              cursorColor: Palettes.textColor,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: 1.2, color: Palettes.primary),
                ),
                // suffix: suffixIconPath == null
                // ? const SizedBox()
                // : GestureDetector(
                //     onTap: suffixIconTap,
                //     child: ImageIcon(
                //       AssetImage(suffixIconPath ?? MyIcon.rightTick),
                //       size: 22,
                //       color: suffixIconColor ?? const Color(0xff55AB31),
                //     ),
                //   ),
                fillColor: Palettes.primary,
                focusColor: Palettes.primary,
                hintText: hintText ?? 'Email',
                hintStyle: Get.textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffBDBABA),
                ),
                isDense: true,
              ),
              style: Get.textTheme.bodyMedium!
                  .copyWith(fontWeight: FontWeight.normal),
            ),
          ),
          passWordChecker!
              ? Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text.rich(
                    textAlign: TextAlign.start,
                    TextSpan(
                      text: 'Must be at lease 8 characters. ',
                      style: Get.textTheme.bodyMedium!.copyWith(
                        color: Palettes.grey,
                        fontSize: 12,
                      ),
                      children: <InlineSpan>[
                        TextSpan(
                          text: '(Medium)',
                          style: Get.textTheme.bodyMedium!.copyWith(
                            color: const Color(0xffEF9F3C),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
