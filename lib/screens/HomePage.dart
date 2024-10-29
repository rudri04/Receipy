import 'package:flutter/material.dart';
import 'package:receipy/Screens/login_screen.dart';
import 'package:receipy/Utils/constants/Colors.dart';
import 'package:receipy/Utils/constants/Images.dart';
import 'package:receipy/Widgets/custom_button.dart';
import 'package:receipy/Widgets/custom_text.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Images.frontPage,
                height:height * .6,
                width: width * .9,
              ),
               SizedBox(height:height*.02,),
              CustomText(data: 'Help your path to health', fontsize: 28, fontWeight: FontWeight.bold, color: ColorsPalete.white),
              SizedBox(height: height*.01),
              CustomText(data: 'goals with happiness', fontsize: 28, fontWeight: FontWeight.bold, color: ColorsPalete.white),
               SizedBox(height:height * .03 ,),
              CustomButton(OnTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>const LoginScreen()));
              }, buttonColor: ColorsPalete.primary, textColor: ColorsPalete.white, data: 'Login'),
              CustomTextButton(onPressed: (){}, data: 'Create New Account', color: ColorsPalete.white, size: 16)
            ],
          ),
        ),
      ),
    );

  }
}
