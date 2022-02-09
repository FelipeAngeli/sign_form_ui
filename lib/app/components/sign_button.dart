import 'package:flutter/material.dart';
import 'package:sign_form_ui/core/style.dart';

class SignButton extends StatelessWidget {
  final String textSign;
  final String textLink;
  const SignButton({
    Key? key,
    this.textSign = "",
    this.textLink = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                textSign,
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                textLink,
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          FloatingActionButton(
            onPressed: () {},
            elevation: 0.0,
            backgroundColor: AppStyles.colorPrimary,
            child: const Icon(Icons.arrow_forward_outlined),
          ),
        ],
      ),
    );
  }
}
