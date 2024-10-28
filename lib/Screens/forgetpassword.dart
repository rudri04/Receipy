import 'package:flutter/material.dart';
import 'package:receipy/Utils/Colors.dart';
import 'package:receipy/Widgets/button.dart';
import 'package:receipy/Widgets/text.dart';

import '../Utils/icons.dart';
import '../Widgets/textfield.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final email_con = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(data: 'Forget Password', fontsize: 24, fontWeight: FontWeight.bold, color: ColorsPalete.Dark),
      ),
      body: Padding(padding: EdgeInsets.only(right: 15,left: 15,top: 35,bottom: 15),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(data: 'Enter your email and we will send you a link', fontsize: 16, fontWeight: FontWeight.normal, color: ColorsPalete.Grey1),
          const SizedBox(height: 5,),
          CustomText(data: 'to reset your password.', fontsize: 16, fontWeight: FontWeight.normal, color: ColorsPalete.Grey1),
          const SizedBox(height: 25,),
          CustomText(
            data: 'Email Address',
            fontsize: 16,
            fontWeight: FontWeight.normal,
            color: ColorsPalete.Dark,
          ),
          const SizedBox(
            height: 10,
          ),
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
            hintText: 'Enter Email Address', textInputType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 15,
          ),
          const Spacer(),
          Center(child: CustomButton(OnTap: (){}, buttonColor: ColorsPalete.Dark, textColor: ColorsPalete.white, data: 'Send Email'))

        ],
      ),
      ),
    );
  }
}
