import 'package:flutter/material.dart';
import 'package:cashmate/theme/colors.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;

  const CustomTextField({
    super.key,
    required this.labelText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.controller,
    this.textInputAction,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isObscured = false;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText;
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: _isObscured,
      focusNode: _focusNode,
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        labelText: widget.labelText,
        // Warna label melayang
        floatingLabelStyle: TextStyle(
          color:
              _focusNode.hasFocus ? PaletteColors.color2 : PaletteColors.color6,
        ),
        labelStyle: TextStyle(
          color:
              _focusNode.hasFocus ? PaletteColors.color2 : PaletteColors.color6,
        ),
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  _isObscured ? Icons.visibility_off : Icons.visibility,
                  color: PaletteColors.color6,
                ),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: PaletteColors.color6,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: PaletteColors.color2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: PaletteColors.color6,
          ),
        ),
      ),
    );
  }
}
