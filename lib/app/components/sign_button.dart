import 'package:flutter/material.dart';
import 'package:sign_form_ui/core/style.dart';

class SignButton extends StatelessWidget {
  const SignButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                "Sign Up",
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Sign in",
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
