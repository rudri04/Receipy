import 'package:flutter/material.dart';
import 'package:receipy/Screens/loginScreen.dart';
import 'package:receipy/Utils/Colors.dart';
import 'package:receipy/Utils/Images.dart';
import 'package:receipy/Widgets/button.dart';
import 'package:receipy/Widgets/text.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsPalete.Secondary,
      appBar: AppBar(
        backgroundColor: ColorsPalete.Secondary,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextButton(
              onPressed: () {
                // Define what happens when 'Later' is tapped
              },
              child: CustomText(
                data: 'Later',
                fontsize: 18,
                fontWeight: FontWeight.bold,
                color: ColorsPalete.white,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Images.frontPage,
              height: 311.56,
              width: 313.85,
            ),
            const SizedBox(height: 70,),
            CustomText(data: 'Help your path to health', fontsize: 28, fontWeight: FontWeight.bold, color: ColorsPalete.white),
            const SizedBox(height: 10,),
            CustomText(data: 'goals with happiness', fontsize: 28, fontWeight: FontWeight.bold, color: ColorsPalete.white),
            const SizedBox(height: 30,),
            CustomButton(OnTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const LoginScreen()));
            }, buttonColor: ColorsPalete.primary, textColor: ColorsPalete.white, data: 'Login'),
            CustomTextButton(onPressed: (){}, data: 'Create New Account', color: ColorsPalete.white, size: 16)
          ],
        ),
      ),
    );

  }
}
