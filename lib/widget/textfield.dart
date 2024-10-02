import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget { 
  TextEditingController controller = TextEditingController();
  String? label, hint;

  CustomTextField({super.key, required this.controller, required this.label, required this.hint});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    if(widget.label == "Password") {
      obscureText = true;
    }
    
    return SizedBox(
      width: 400,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hint,
          labelText: widget.label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0), // Menggunakan radius dari widget
          ),
        ),
        obscureText: obscureText,
      ),
    );
  }
}
