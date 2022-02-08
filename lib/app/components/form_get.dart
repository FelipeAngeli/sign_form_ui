import 'package:flutter/material.dart';
import 'package:sign_form_ui/core/style.dart';

//http://www.macoratti.net/19/07/flut_fomval1.htm
//https://stackoverflow.com/questions/52326268/how-to-create-a-round-checkbox-in-flutter-or-change-the-checkboxs-style-suc
class FormGet extends StatefulWidget {
  const FormGet({
    Key? key,
  }) : super(key: key);

  @override
  State<FormGet> createState() => _FormGetState();
}

class _FormGetState extends State<FormGet> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(hintText: "Name"),
          //maxLength: 40,
          // validator: (String val){ nome = val},
        ),
        TextFormField(
          decoration: const InputDecoration(hintText: "E-mail"),
          //maxLength: 40,
          // validator: (String val){ nome = val},
        ),
        TextFormField(
          decoration: const InputDecoration(hintText: "Password"),
          //maxLength: 40,
          // validator: (String val){ nome = val},
        ),
        Row(
          children: [
            Checkbox(
              visualDensity: const VisualDensity(horizontal: -4),
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
                text: "I agree to the ",
                children: const [
                  TextSpan(
                    text: "Terms of Service ",
                    style: TextStyle(color: AppStyles.colorPrimary),
                  ),
                  TextSpan(text: "and "),
                  TextSpan(
                    text: "Privacy Policy",
                    style: TextStyle(color: AppStyles.colorPrimary),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}


//"I agree to the Terms of Service and Privacy Policy"
