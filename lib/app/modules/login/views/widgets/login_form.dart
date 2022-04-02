import 'package:blood_distirbution/app/modules/login/controllers/login_controller.dart';
import 'package:blood_distirbution/app/routes/app_pages.dart';
import 'package:blood_distirbution/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends GetView<LoginController> {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget usernameInput() {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Username",
          style: primaryTextStyle.copyWith(
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          controller: controller.inputEmail,
          decoration: InputDecoration(
            hintText: "Your username....",
            hintStyle: primaryTextStyle.copyWith(fontWeight: light),
            contentPadding: EdgeInsets.all(defaultMargin),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ]);
    }

    Widget passwordInput() {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Password",
          style: primaryTextStyle.copyWith(
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          controller: controller.inputPassword,
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Your Password....",
            hintStyle: primaryTextStyle.copyWith(fontWeight: light),
            contentPadding: EdgeInsets.all(defaultMargin),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ]);
    }

    Widget buttonProcess() {
      return Container(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: successColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),
            onPressed: () async {
              controller.login();
            },
            child: Obx(() => (controller.isLoading.value)
                ? CircularProgressIndicator(
                    color: backgroundColor,
                  )
                : Text(
                    "Login",
                    style: primaryTextStyle.copyWith(
                        fontSize: 20,
                        color: backgroundColor,
                        fontWeight: semiBold),
                  ))),
      );
    }

    Widget gotoSignUp() {
      return Column(
        children: [
          Text("You don't have an account?",
              style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                  fontStyle: FontStyle.italic)),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.REGISTER);
            },
            child: Text("Sign Up",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                  color: successColor,
                )),
          )
        ],
      );
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 40),
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      // height: MediaQuery.of(context).size.height / 3,
      width: double.infinity,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: successColor,
          blurRadius: 4,
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          usernameInput(),
          SizedBox(
            height: 20,
          ),
          passwordInput(),
          SizedBox(
            height: 40,
          ),
          buttonProcess(),
          SizedBox(
            height: 20,
          ),
          gotoSignUp()
        ],
      ),
    );
  }
}
