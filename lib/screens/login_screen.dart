import 'package:flutter/material.dart';
import 'package:receipy/Screens/forgetpassword_screen.dart';
import 'package:receipy/Utils/constants/Colors.dart';
import 'package:receipy/Utils/constants/icons.dart';
import 'package:receipy/Widgets/custom_button.dart';
import 'package:receipy/Widgets/custom_text.dart';
import 'package:receipy/Widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    // final FocusNode textFieldFocusNode = FocusNode();
    final formkey = GlobalKey<FormState>();
    final email_con = TextEditingController();
    final password_con = TextEditingController();
    // var size = MediaQuery.of(context).size;
    // var width = size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: CustomText(
            data: 'Login',
            fontsize: 24,
            fontWeight: FontWeight.bold,
            color: ColorsPalete.Dark),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 13),
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                CustomTextField(
                  validator: (value) {},
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, bottom: 8.0, top: 10.0),
                    width: 25.0,
                    height: 25.0,
                    child: Image.asset(AppIcons.message),
                  ),
                  controller: email_con,
                  hintText: 'Enter Email Address', textInputType: TextInputType.emailAddress, text: 'Email Address',
                ),
                const SizedBox(
                  height: 15,
                ),

                CustomTextField(
                  validator: (value) {},
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, bottom: 8.0, top: 10.0),
                    width: 25.0,
                    height: 25.0,
                    child: Image.asset(AppIcons.lock),
                  ),
                  controller: password_con,
                  hintText: 'Enter Password',
                  obscureText: obscure,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscure = !obscure;
                      });
                      // textFieldFocusNode.requestFocus();
                    },
                    icon: Container(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 8.0, top: 10.0),
                      width: 48.0,
                      height: 48.0,
                      child: Image.asset(obscure ? AppIcons.hide : AppIcons.show),
                    ),
                  ), textInputType: TextInputType.visiblePassword, text: 'Password',
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                    child: CustomButton(
                        OnTap: () {},
                        buttonColor: ColorsPalete.Dark,
                        textColor: ColorsPalete.white,
                        data: 'Login')),
                const SizedBox(
                  height: 12,
                ),
                Center(
                    child: CustomTextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      const ForgetPasswordScreen()));
                        },
                        data: 'Forgot Password?',
                        color: ColorsPalete.Dark,
                        size: 16)),
                const SizedBox(
                  height: 150,
                ),
                Center(
                  child: CustomText(
                      data: 'or login with',
                      fontsize: 16,
                      fontWeight: FontWeight.normal,
                      color: ColorsPalete.Grey2),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: SizedBox(
                    width: 327,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 54,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xFFF06155)),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppIcons.google,
                              height: 25,
                              width: 25,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            CustomText(
                                data: 'Login with Google',
                                fontsize: 13,
                                fontWeight: FontWeight.bold,
                                color: ColorsPalete.white)
                          ],
                        )),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: SizedBox(
                    width: 327,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 54,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xFF1E76D6)),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppIcons.facebook,
                              height: 23,
                              width: 23,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            CustomText(
                                data: 'Login with Facebook',
                                fontsize: 13,
                                fontWeight: FontWeight.bold,
                                color: ColorsPalete.white)
                          ],
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
