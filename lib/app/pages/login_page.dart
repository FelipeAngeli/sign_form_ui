import 'package:flutter/material.dart';

import 'package:sign_form_ui/app/components/custom_check.dart';
import 'package:sign_form_ui/app/components/custom_field.dart';

import 'package:sign_form_ui/app/components/sign_button.dart';

import 'home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

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
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              CustomFiel(
                                // key: _formKey,
                                hinText: "E-mail",
                                validator: (value) {
                                  if (!value!.contains("@")) {
                                    return "Esse e-mail está incorreto";
                                  }
                                },
                              ),
                              CustomFiel(
                                // key: _formKey,
                                hinText: "Passdord",
                                obscureText: true,
                                validator: (value) {
                                  if (value!.length < 6) {
                                    return "A senha deve ter pelo menos 6 caracteres";
                                  }
                                },
                              ),
                              const CustomCheck(
                                textOne: "Remember me",
                                width: 90,
                                textFive: "Forgot password?",
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SignButton(
                          textSign: "Sign In",
                          textLink: "Sign Up",
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                              _doLogin();
                            }
                          },
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

  void _doLogin() async {
    if (_formKey.currentState!.validate()) {
      print("valido");
    } else {
      print("invalido");
    }
  }
}
