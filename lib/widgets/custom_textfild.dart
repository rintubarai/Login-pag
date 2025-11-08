import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller ;
  final String hintText;
  final Widget? prefixWidget;
   const CustomTextField({super.key, required this.controller, required this.hintText, this.prefixWidget});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:controller ,
      style: TextStyle(
          fontSize: 18,
          color: Colors.red
      ),

      decoration:InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.blueGrey,
            fontSize: 18,
          ),

          fillColor: Colors.black12,
          filled: true,
          prefixIcon:prefixWidget,
          enabledBorder: OutlineInputBorder(
          ),

          focusedBorder: OutlineInputBorder()
      ),
    );
  }
}
