import 'package:flutter/material.dart';

import '../custome_widget/my_theme.dart';
import 'components/background.dart';
import 'components/custom_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome to Code Algo Family",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "assets/images/undraw_Balloons.png",
                width: size.width * 0.7,
              ),
              CustomButton(
                buttonColor: MyTheme.loginButtonColor,
                buttontext: "LOGIN",
                textColor: Colors.white,
                handleButtonClick: loginButtonClickHandler,
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                buttonColor: MyTheme.signupButtonColor,
                buttontext: "SIGNUP",
                textColor: Colors.black,
                handleButtonClick: signUpButtonClickHandler,
              ),
            ],
          ),
        ),
      ),
    );
  }

  loginButtonClickHandler() {
    print("Login Clicked");
  }

  signUpButtonClickHandler() {
    print("Signup Clicked");
  }
}
