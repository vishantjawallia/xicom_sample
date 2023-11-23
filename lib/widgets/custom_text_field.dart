// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/palettes.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final String? name;
  final void Function(String? value)? onChanged;
  final String? Function(String? value)? validator;

  const CustomTextField({
    Key? key,
    this.controller,
    this.focusNode,
    this.keyboardType,
    // this.widgetMargin,
    // this.suffixIconPath,
    this.onChanged,
    this.validator,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 80,
            child: Text(
              name ?? 'First Name',
              style: Get.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w700,
                color: const Color(0xff7B7979),
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(width: 60),
          Flexible(
            child: TextFormField(
              // autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: validator,
              focusNode: focusNode,
              keyboardType: keyboardType,
              // onChanged: onChanged,
              controller: controller,
              decoration: const InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 1.2, color: Palettes.primary),
                ),
                fillColor: Palettes.primary,
                focusColor: Palettes.primary,
                isDense: true,
              ),
              style: Get.textTheme.bodyMedium!
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
