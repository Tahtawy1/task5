import 'package:flutter/material.dart';

class CustomHeaderTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final AutovalidateMode autovalidateMode;
  final String title;

  const CustomHeaderTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.autovalidateMode,
    required this.title,
  });

  @override
  State<CustomHeaderTextField> createState() => _CustomHeaderTextFieldState();
}

class _CustomHeaderTextFieldState extends State<CustomHeaderTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(widget.title),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(color: Color(0x09000000), blurRadius: 8),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: TextFormField(
              textDirection: TextDirection.rtl,
              controller: widget.controller,
              autovalidateMode: widget.autovalidateMode,
              decoration: InputDecoration(
                hintTextDirection: TextDirection.rtl,
                filled: true,
                hintText: widget.hintText,
                border: customOutlineBorder(
                  color: Colors.black,
                  isFoucsedBorder: false,
                ),
                enabledBorder: customOutlineBorder(
                  color: Colors.black,
                  isFoucsedBorder: false,
                ),
                focusedBorder: customOutlineBorder(
                  color: Colors.blue,
                  isFoucsedBorder: true,
                ),
                errorBorder: customOutlineBorder(
                  color: Colors.red,
                  isFoucsedBorder: true,
                ),
                focusedErrorBorder: customOutlineBorder(
                  color: Colors.red,
                  isFoucsedBorder: true,
                ),
              ),

              //* ===== Validator =====
              validator: (String? value) {
                if (value?.isEmpty ?? true) {
                  return 'Field is required!';
                }

                return null;
              },
            ),
          ),
        ),
      ],
    );
  }
}

OutlineInputBorder customOutlineBorder({
  required bool isFoucsedBorder,
  required Color color,
}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: isFoucsedBorder ? color : Colors.transparent),
  );
}
