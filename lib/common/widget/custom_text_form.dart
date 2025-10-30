import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  CustomTextForm({super.key , required this.controller , this.validator , this.hintText , this.maxLines});
 final String? Function(String?)? validator;
 final TextEditingController? controller;
 final String? hintText;
 final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller:controller ,
        validator: validator,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)
          ),
        ),
      ),
    );
  }
}