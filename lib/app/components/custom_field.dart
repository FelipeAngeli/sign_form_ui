import 'package:flutter/material.dart';
import 'package:sign_form_ui/core/style.dart';

class CustomFiel extends StatelessWidget {
  final Align? align;
  final String? hinText;
  final TextEditingController? controller;
  final Function(String?)? onChanged;
  const CustomFiel({
    Key? key,
    this.hinText,
    this.controller,
    this.onChanged,
    this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
        hintText: hinText,
        hintStyle: const TextStyle(
          color: AppStyles.colorSegundary,
          fontFamily: "OpenSans",
          fontSize: 16,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppStyles.colorSegundary,
          ),
        ),
      ),
      style: const TextStyle(
        color: AppStyles.colorSegundary,
        fontFamily: "OpenSans",
        fontSize: 16,
      ),

      textAlignVertical: TextAlignVertical.bottom,

      //maxLength: 40,
      // validator: (String val){ nome = val},
    );
  }
}
