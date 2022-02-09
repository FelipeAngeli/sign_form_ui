import 'package:flutter/material.dart';

import 'package:sign_form_ui/app/components/custom_check.dart';
import 'package:sign_form_ui/app/components/custom_field.dart';

import 'package:sign_form_ui/app/components/sign_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Expanded(flex: 2, child: Column()),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const CustomFiel(hinText: "E-mail"),
                        const CustomFiel(hinText: "Passdord"),
                        const CustomCheck(
                          textOne: "Remember me",
                          width: 90,
                          textFive: "Forgot password?",
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const SignButton(
                          textSign: "Sign In",
                          textLink: "Sign Up",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
