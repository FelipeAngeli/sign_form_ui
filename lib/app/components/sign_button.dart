import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  const SignButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sign Up",
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                "Sign in",
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          //button
        ],
      ),
    );
  }
}
