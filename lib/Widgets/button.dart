import 'package:flutter/material.dart';

//Normal Button Custom Widget
class CustomButton extends StatefulWidget {
  const CustomButton({super.key, required this.OnTap, required this.buttonColor, required this.textColor, required this.data});
  final VoidCallback OnTap;
  final Color buttonColor,textColor;
  final String data;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
  var size = MediaQuery.of(context).size;
  var width = size.width;
    return Container(
      width: width * .85,
      child: InkWell(
        onTap: widget.OnTap,
        child: Container(
          height: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.buttonColor
          ),
          child: Center(
            child: Text(widget.data,style: TextStyle(color: widget.textColor,fontWeight: FontWeight.bold,fontSize: 16,),),
          ),
        ),
      ),
    );
  }
}




//Text Button Custom Widget
class CustomTextButton extends StatefulWidget {
  const CustomTextButton({super.key, required this.onPressed, required this.data, required this.color, required this.size});
  final VoidCallback onPressed;
  final String data;
  final Color color;
  final double size;

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: widget.onPressed,
        child: Text(
            widget.data,
            style: TextStyle(
              color: widget.color,
              fontSize: widget.size,
              height: 3,
              fontWeight: FontWeight.bold
            ),
        ));
  }
}

