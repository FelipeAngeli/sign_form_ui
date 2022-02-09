import 'package:flutter/material.dart';
import 'package:sign_form_ui/core/style.dart';

class CustomCheck extends StatefulWidget {
  final String? textOne;
  final String? textTwo;
  final String? textTree;
  final String? textFour;
  final String textFive;
  final double? width;
  const CustomCheck({
    Key? key,
    this.textOne,
    this.textTwo,
    this.textTree,
    this.textFour,
    this.textFive = "",
    this.width,
  }) : super(key: key);

  @override
  State<CustomCheck> createState() => _CustomCheckState();
}

class _CustomCheckState extends State<CustomCheck> {
  // set value(bool value) {}
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          // visualDensity: VisualDensity(horizontal: -4),
          checkColor: Colors.white,
          side: const BorderSide(color: AppStyles.colorPrimary, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          value: value,
          onChanged: (bool? value) {
            setState(() {
              this.value = value!;
            });
          },
        ),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.headline4,
            text: widget.textOne,
            children: [
              TextSpan(
                text: widget.textTwo,
                style: const TextStyle(color: AppStyles.colorPrimary),
              ),
              TextSpan(text: widget.textTree),
              TextSpan(
                text: widget.textFour,
                style: const TextStyle(color: AppStyles.colorPrimary),
              ),
            ],
          ),
        ),
        SizedBox(
          width: widget.width,
        ),
        Text(
          widget.textFive,
          style: const TextStyle(
              color: AppStyles.colorPrimary,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline),
        )
      ],
    );
  }
}
